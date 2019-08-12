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
      console.log("Recorder Service Started")

      this._initObervables()

      RingerMode.getRingerMode((type) => {
        this._ringerModeType = type
      })

      this._accelerometer.recordAcceleration().then((data) => { console.log(data) })
      this._gyroscope.recordGyroscope().then((data) => { console.log(data) })
      this._magnetometer.recordMagnetometer().then((data) => { console.log(data) })
      this._location.recordLocation().then((data) => { console.log(data) })
      this._audioSnippet.recordAudio().then((data) => { console.log(data) })
            
    })
  }

  private _initObervables() {
    this._networkType = this._network.type

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
}
