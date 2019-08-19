import { Injectable } from '@angular/core';
import { RECORD_TIME } from 'src/app/constants/app-constants'
import { SensorList } from 'src/app/classes/sensor-list'

@Injectable({
  providedIn: 'root'
})
export class GyroscopeService {

  private _gyroscopeList: SensorList

  private _gyroscopeListener = (event: DeviceMotionEvent) => {
    this._gyroscopeList.push(event.rotationRate.alpha*(Math.PI/180), event.rotationRate.beta*(Math.PI/180), event.rotationRate.gamma*(Math.PI/180), event.timeStamp)
  }

  

  constructor() {
    this._gyroscopeList = new SensorList
   }

  public recordGyroscope(): Promise<SensorList> {
    return new Promise( (resolve, reject) => {
      this._gyroscopeList = new SensorList
      window.addEventListener('devicemotion', this._gyroscopeListener)
      setTimeout(() => {
        window.removeEventListener('devicemotion', this._gyroscopeListener)
        resolve(this._gyroscopeList)
      }, RECORD_TIME)
    })
  }
}
