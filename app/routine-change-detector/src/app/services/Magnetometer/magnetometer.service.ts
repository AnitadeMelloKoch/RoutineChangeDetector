import { Injectable } from '@angular/core';
import { AppComponent } from 'src/app/app.component';
import { SensorList } from 'src/app/classes/sensor-list'

@Injectable({
  providedIn: 'root'
})
export class MagnetometerService {

  private _magnetList: SensorList

  private _magnetListener = (event: DeviceOrientationEvent) => {
    this._magnetList.push(event.alpha, event.beta, event.gamma, event.timeStamp)
  }

  constructor() {
    this._magnetList = new SensorList
   }

  public recordMagnetometer(): Promise<SensorList> {
    return new Promise( (resolve, reject) => {
      this._magnetList = new SensorList
      window.addEventListener('deviceorientation', this._magnetListener)
      setTimeout(() => {
        window.removeEventListener('deviceorientation', this._magnetListener)
        resolve(this._magnetList)
      }, AppComponent.recordTime)
    })
  }
}
