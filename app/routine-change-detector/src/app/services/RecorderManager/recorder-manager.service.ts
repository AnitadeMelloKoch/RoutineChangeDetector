import { Injectable } from '@angular/core';
import { Platform } from '@ionic/angular';
import { AccelerometerService } from '../Accelerometer/accelerometer.service'
import { GyroscopeService } from '../Gyroscope/gyroscope.service'
import { MagnetometerService } from '../Magnetometer/magnetometer.service';
import { LocationService } from '../Location/location.service';
import { AudioSnippetService } from '../AudioSnippet/audio-snippet.service';

@Injectable({
  providedIn: 'root'
})
export class RecorderManagerService {

  

  constructor(
    private _platform: Platform,
    private _accelerometer: AccelerometerService,
    private _gyroscope: GyroscopeService,
    private _magnetometer: MagnetometerService,
    private _location: LocationService,
    private _audioSnippet: AudioSnippetService
  ) { 
    this._platform.ready().then(() => {
      console.log("Recorder Service Started")
      this._accelerometer.recordAcceleration().then((data) => { console.log(data) })
      this._gyroscope.recordGyroscope().then((data) => { console.log(data) })
      this._magnetometer.recordMagnetometer().then((data) => { console.log(data) })
      this._location.recordLocation().then((data) => { console.log(data) })
      this._audioSnippet.recordAudio().then((data) => { console.log(data) })
    })
  }
}
