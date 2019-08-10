import { Injectable } from '@angular/core';
import { AppComponent } from 'src/app/app.component';

@Injectable({
  providedIn: 'root'
})
export class MagnetometerService {

  private _magnetList = []

  private _magnetListener = (event: any) => {
    let mag = this._magnitude(event.alpha, event.beta, event.gamma)
    // console.log(mag)
    this._magnetList.push(mag)
  }

  private _magnitude = (x: number, y: number, z: number) => {
    return Math.sqrt(Math.pow(x,2)+Math.pow(y,2)+Math.pow(z,2))
  }

  constructor() {
    // this.recordMagnetometer().then(ret => console.log(ret)) 
   }

  public recordMagnetometer = () => {
    return new Promise( (resolve, reject) => {
      this._magnetList = []
      window.addEventListener('deviceorientation', this._magnetListener)
      setTimeout(() => {
        window.removeEventListener('deviceorientation', this._magnetListener)
        resolve(this._magnetList)
      }, AppComponent.recordTime)
    })
  }
}
