import { Injectable } from '@angular/core';
import { Platform } from '@ionic/angular';

import { AccelerometerService } from '../Accelerometer/accelerometer.service'
import { GyroscopeService } from '../Gyroscope/gyroscope.service'
import { MagnetometerService } from '../Magnetometer/magnetometer.service';
import { LocationService } from '../Location/location.service';
import { AudioSnippetService } from '../AudioSnippet/audio-snippet.service';
import { AppStateService } from '../AppState/app-state.service';
import { PhoneStateService } from '../PhoneState/phone-state.service';

import { fromEvent } from 'rxjs';
import { Network } from '@ionic-native/network/ngx'



// declare var PhoneCallTrap: any;
declare var RingerMode: any;

interface IDateTime {
  timestamp?: number
  day?: number
  hour?: number
  minute?: number
}

@Injectable({
  providedIn: 'root'
})
export class RecorderManagerService {

  private _batteryLevel: number
  private _batteryIsPlugged: boolean
  private _appStateType: string
  private _networkType: string
  private _phoneStateType: string
  private _ringerModeType: string

  private _datetime: IDateTime

  private _networkObservable: any
  private _batteryObservable: any
  private _appStateObservable: any
  private _phoneStateObservable: any

  constructor(
    private _platform: Platform,
    private _accelerometer: AccelerometerService,
    private _gyroscope: GyroscopeService,
    private _magnetometer: MagnetometerService,
    private _location: LocationService,
    private _audioSnippet: AudioSnippetService,
    private _appState: AppStateService,
    private _network: Network,
    private _phoneState: PhoneStateService
  ) { 
    this._platform.ready().then(() => {
      this._initService()

      
      this._recordShortData()
      this._recordLongData().then((data) => {
        console.log(data)
      })
      
      
            
    })
  }

  private _recordShortData(){
    RingerMode.getRingerMode( type => {
      this._ringerModeType = type
    })
    let date = new Date()
    this._datetime.timestamp = date.getTime()
    this._datetime.day = date.getDay()
    this._datetime.hour = date.getHours()
    this._datetime.minute = date.getMinutes()

    console.log(this._datetime)
  }

  private _onLongFinally( recorded:any, flags: boolean[], resolve: (value?: any) => void){
    if(flags.every(f => { return f })){
      resolve(recorded)
    }
  }

  private _recordLongData() {
    return new Promise(resolve => {

      let recorded = {
        acceleration: [],
        gyroscope: [],
        magnetometer: [],
        location: [],
        audio: new ArrayBuffer(0),
        flags: [false, false, false, false, false]
      }

      this._accelerometer.recordAcceleration().then((data) => {
        recorded.acceleration = data 
        recorded.flags[0] = true
      }).finally( () => {
        this._onLongFinally(recorded, recorded.flags, resolve)
      })
      this._gyroscope.recordGyroscope().then((data) => { 
        recorded.gyroscope = data
        recorded.flags[1] = true
      }).finally( () => {
        this._onLongFinally(recorded, recorded.flags, resolve)
      })
      this._magnetometer.recordMagnetometer().then((data) => { 
        recorded.magnetometer = data
        recorded.flags[2] = true
      }).finally( () => {
        this._onLongFinally(recorded, recorded.flags, resolve)
      })
      this._location.recordLocation().then((data) => { 
        recorded.location = data
        recorded.flags[3] = true
      }).finally( () => {
        this._onLongFinally(recorded, recorded.flags, resolve)
      })
      this._audioSnippet.recordAudio().then((data) => { 
        recorded.audio = data
        recorded.flags[4] = true
      }).finally( () => {
        this._onLongFinally(recorded, recorded.flags, resolve)
      })
    })    
  }

  private _initService() {
    console.log("Recorder Service Started")
    this._networkType = this._network.type
    this._datetime = {}
    this._subscribeObervables()  // To increase performance, subscribe and 
                            // unsubscribe every record session
  }

  private _subscribeObervables() {
    this._networkObservable = this._network.onchange().subscribe( () => {
      this._networkType = this._network.type
    })
    this._batteryObservable = fromEvent(window, 'batterystatus').subscribe( status => {
      this._batteryLevel = status["level"]
      this._batteryIsPlugged = status["isPlugged"]
    })
    this._appStateObservable = this._appState.onChange().subscribe( state => {
      this._appStateType = state
    })
    this._phoneStateObservable = this._phoneState.onChange().subscribe( state => {
      this._phoneStateType = state
    })
  }

  private _unsubscribeObservables() {
    this._networkObservable.unsubscribe()
    this._batteryObservable.unsubscribe()
    this._appStateObservable.unsubscribe()
    this._phoneStateObservable.unsubscribe()
  }

}
