import { Injectable } from '@angular/core';
import { AppComponent } from 'src/app/app.component';

@Injectable({
  providedIn: 'root'
})
export class AccelerometerService {

  private static _G = 9.80665;
  private _accelerationList = []

  private _accelerationListener = (event: any) => {
    let acc = this._magnitude(event.accelerationIncludingGravity.x, event.accelerationIncludingGravity.y, event.accelerationIncludingGravity.z)/AccelerometerService._G
    this._accelerationList.push(acc)
  }

  private _magnitude = (x: number, y: number, z: number) => {
    return Math.sqrt(Math.pow(x,2)+Math.pow(y,2)+Math.pow(z,2))
  }

  constructor() {
    // this.recordAcceleration()
  }

   public recordAcceleration = () => {
    return new Promise( (resolve, reject) => {
      this._accelerationList = []
      window.addEventListener('devicemotion', this._accelerationListener)
      setTimeout(() => {
        window.removeEventListener('devicemotion', this._accelerationListener)
        resolve(this._accelerationList)
      }, AppComponent.recordTime)
    })
   }
}
