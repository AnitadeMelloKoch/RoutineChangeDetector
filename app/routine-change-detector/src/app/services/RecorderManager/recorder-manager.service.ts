import { Injectable } from '@angular/core';
import { Platform } from '@ionic/angular';

import { AccelerometerService } from '../Accelerometer/accelerometer.service'
import { GyroscopeService } from '../Gyroscope/gyroscope.service'
import { MagnetometerService } from '../Magnetometer/magnetometer.service';
import { SensorList } from 'src/app/classes/sensor-list'

import { LocationService, GeoData } from '../Location/location.service';
import { AppStateService } from '../AppState/app-state.service';
import { PhoneStateService } from '../PhoneState/phone-state.service';

import { fromEvent } from 'rxjs';
import { Network } from '@ionic-native/network/ngx'
import { HttpService } from '../Http/http.service';

import { Device } from '@ionic-native/device/ngx'
import { MFCCService, MFCCList } from '../MFCC/mfcc.service';



// declare var PhoneCallTrap: any;
declare var RingerMode: any;

export class DayTime {
  timestamp: number
  day: number
  hour: number
  minute: number

  constructor(ts: number, d: number, h: number, m: number){
    this.timestamp = ts
    this.day = d
    this.hour = h
    this.minute = m
  }
}

class LongData{
  acceleration: SensorList //new SensorList,
  gyroscope: SensorList //new SensorList,
  magnetometer: SensorList//new SensorList,
  mfcc: MFCCList
  location: GeoData[] //[],
  flags: boolean[] //[false, false, false, false, false]
  constructor(){
    this.acceleration = new SensorList
    this.gyroscope = new SensorList
    this.magnetometer = new SensorList
    this.mfcc = new MFCCList
    this.location = []
    this.flags = [false, false, false, false, false]
  }
}

export class RecordedData{
  acceleration: SensorList
  gyroscope: SensorList
  location: GeoData[]
  magnetometer: SensorList
  mfcc: MFCCList
  batteryLevel: number
  batteryIsPlugged: boolean
  appState: string
  network: string
  phoneState: string
  ringerMode: string
  uuid: string
  timestamp: number
  day: number
  hour: number
  minute: number
  constructor(_acceleration: SensorList,
              _gyroscope: SensorList,
              _location: GeoData[],
              _magnetometer: SensorList,
              _mfcc: MFCCList,
              _batteryLevel: number,
              _batteryIsPlugged: boolean,
              _appState: string,
              _network: string,
              _phoneState: string,
              _ringerMode: string,
              _uuid: string,
              _timestamp: number,
              _day: number,
              _hour: number,
              _minute: number){
    this.acceleration = _acceleration
    this.gyroscope = _gyroscope
    this.location = _location
    this.magnetometer = _magnetometer
    this.mfcc = _mfcc
    this.batteryLevel = _batteryLevel
    this.batteryIsPlugged = _batteryIsPlugged
    this.appState = _appState
    this.network = _network
    this.phoneState = _phoneState
    this.ringerMode = _ringerMode
    this.uuid = _uuid
    this.timestamp = _timestamp
    this.day = _day
    this.hour = _hour
    this.minute = _minute
  }
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
  private _uuid: string

  private _datetime: DayTime

  private _networkObservable: any
  private _batteryObservable: any
  private _appStateObservable: any
  private _phoneStateObservable: any

  constructor(
    private _platform: Platform,
    private _accelerometer: AccelerometerService,
    private _gyroscope: GyroscopeService,
    private _magnetometer: MagnetometerService,
    private _mfcc: MFCCService,
    private _location: LocationService,
    private _appState: AppStateService,
    private _network: Network,
    private _phoneState: PhoneStateService,
    private _device: Device,
    // private _http: HttpService 
  ) { 
    this._platform.ready().then(() => {
      this._initService()
      
      this.recordData().then( data => {
        console.log(data)
      })
     
    })
  }

  public recordData(): Promise<RecordedData>{
    return new Promise( (resolve, reject) => {
      let data = new LongData()
      this._recordShortData()
      this._recordLongData()
        .then((_data) => {
          data = _data
        })
        .finally( () => {
          resolve(new RecordedData(
            data.acceleration,
            data.gyroscope,
            data.location,
            data.magnetometer,
            data.mfcc,
            this._batteryLevel,
            this._batteryIsPlugged,
            this._appStateType,
            this._networkType,
            this._phoneStateType,
            this._ringerModeType,
            this._uuid,
            this._datetime.timestamp,
            this._datetime.day,
            this._datetime.hour,
            this._datetime.minute
            ))
        })
    })
  }

  private _recordShortData(){
    RingerMode.getRingerMode( type => {
      this._ringerModeType = type
    })
    let date = new Date()
    this._datetime = new DayTime(date.getTime(), date.getDay(), date.getHours(), date.getMinutes())
  }

  private _onLongFinally( recorded:LongData, flags: boolean[], resolve: (value?: any) => void){
    if(flags.every(f => { return f })){
      resolve(recorded)
    }
  }

  private _recordLongData() :Promise<LongData> {
    return new Promise(resolve => {

      let recorded = new LongData()

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
      this._mfcc.recordAudio().then((data) => { 
        recorded.mfcc = data
        recorded.flags[4] = true
      }).finally( () => {
        this._onLongFinally(recorded, recorded.flags, resolve)
      })
    })    
  }

  // ! To increase performance, subscribe and unsubscribe every record session
  private _initService() {
    this._uuid = this._device.uuid
    this._networkType = this._network.type
    // this._datetime = {}
    this._subscribeObervables()
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
