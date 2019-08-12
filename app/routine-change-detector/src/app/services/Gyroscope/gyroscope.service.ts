import { Injectable } from '@angular/core';
import { AppComponent } from 'src/app/app.component';

@Injectable({
  providedIn: 'root'
})
export class GyroscopeService {

  private _gyroscopeList = []

  private _gyroscopeListener = (event: any) => {
    let gyr = this._magnitude(event.rotationRate.alpha, event.rotationRate.beta, event.rotationRate.gamma)*(Math.PI/180)
    // console.log(gyr)
    this._gyroscopeList.push(gyr)
  }

  private _magnitude = (x: number, y: number, z: number) => {
    return Math.sqrt(Math.pow(x,2)+Math.pow(y,2)+Math.pow(z,2))
  }

  constructor() {
    // this.recordGyroscope().then(out => console.log(out))
   }

  public recordGyroscope(): Promise<any[]> {
    return new Promise( (resolve, reject) => {
      this._gyroscopeList = []
      window.addEventListener('devicemotion', this._gyroscopeListener)
      setTimeout(() => {
        window.removeEventListener('devicemotion', this._gyroscopeListener)
        resolve(this._gyroscopeList)
      }, AppComponent.recordTime)
    })
  }
}
