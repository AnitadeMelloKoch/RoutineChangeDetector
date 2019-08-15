import { Injectable } from '@angular/core';
import { AppComponent } from 'src/app/app.component';
import { SensorList } from 'src/app/classes/sensor-list'

@Injectable({
  providedIn: 'root'
})
export class AccelerometerService {

  private static _G = 9.80665;
  private _accelerationList: SensorList

  private _accelerationListener = (event: DeviceMotionEvent) => {
    this._accelerationList.push(
      event.accelerationIncludingGravity.x / AccelerometerService._G, 
      event.accelerationIncludingGravity.y / AccelerometerService._G, 
      event.accelerationIncludingGravity.z / AccelerometerService._G, 
      event.timeStamp)
  }

  constructor() {
    this._accelerationList = new SensorList
  }

   public recordAcceleration(): Promise<SensorList> {
    return new Promise( (resolve, reject) => {
      this._accelerationList = new SensorList
      window.addEventListener('devicemotion', this._accelerationListener)
      setTimeout(() => {
        window.removeEventListener('devicemotion', this._accelerationListener)
        resolve(this._accelerationList)
      }, AppComponent.recordTime)
    })
   }
}
