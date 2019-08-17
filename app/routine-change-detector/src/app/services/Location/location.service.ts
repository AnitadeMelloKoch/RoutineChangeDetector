import { Injectable } from '@angular/core';

import { Geolocation } from '@ionic-native/geolocation/ngx';
import { Platform } from '@ionic/angular';
import { AppComponent } from 'src/app/app.component';
import { filter } from 'rxjs/operators';

@Injectable({
  providedIn: 'root'
})
export class LocationService {
  
  private _geodataList = []
  private readonly _geolocationOptions = { maximumAge: 0, timeout: 9000, enableHighAccuracy: true }

  constructor(private _geolocation: Geolocation, private _platform: Platform) {
    // this.recordLocation().then(res => console.log(res))
  }

  private _geolocationSuccess = (geoloc) => { 
    // console.log(geoloc)
    this._geodataList.push(geoloc)
   }
  private _geolocationFilter = (p) => {
    // if(!(p.coords !== undefined)){
    //   console.log("Filtering out next value...")
    //   console.log(p)
    // }
    return p.coords !== undefined
  }

  public recordLocation(): Promise<any[]> {
    return new Promise ( (resolve, reject) => {
      this._geodataList = []
      let geoWatchID = this._geolocation.watchPosition(this._geolocationOptions)
                        .pipe(
                          filter( this._geolocationFilter )
                          )
                        .subscribe( this._geolocationSuccess )
      setTimeout(() => {
        geoWatchID.unsubscribe()
        this._geolocation.getCurrentPosition()
          .then( resp => {
            this._geodataList.push(resp)
          })
        resolve(this._geodataList)
      }, AppComponent.recordTime)
    })
  }

}

export class GeoData {
  private _latitude: number
  private _longitude: number
  private _accuracy: number
  private _altitude: number
  private _altitudeAccuracy: number
  private _heading: number
  private _speed: number
  private _timestamp: number

  constructor(){
    this._latitude = 0
    this._longitude = 0
    this._accuracy = 0
    this._altitude = 0
    this._altitudeAccuracy = 0
    this._heading = 0
    this._speed = 0
    this._timestamp = 0
  }

  setGeoData(latitude: number, longitude: number, accuracy: number, altitude: number, altitudeAccuracy: number, heading: number, speed: number, timestamp: number){
      this.setLatitude(latitude)
      this.setLongitude(longitude)
      this.setAccuracy(accuracy)
      this.setAltitude(altitude)
      this.setAltitudeAccuracy(altitudeAccuracy)
      this.setHeading(heading)
      this.setSpeed(speed)
      this.setTimestamp(timestamp)
  }

  setLatitude(latitude: number):void {
    if(latitude <= 90 && latitude >= -90) { this._latitude = latitude }
  }
  setLongitude(longitude: number):void {
    if(longitude <= 180 && longitude >= -180) { this._longitude = longitude }
  }
  setAccuracy(accuracy: number):void {
    this._accuracy = accuracy
  }
  setAltitude(altitude: number):void {
    this._altitude = altitude
  }
  setAltitudeAccuracy(altitudeAccuracy: number):void {
    this._altitudeAccuracy = altitudeAccuracy
  }
  setHeading(heading: number):void {
    this._heading = heading
  }
  setSpeed(speed: number):void {
    this._speed = speed
  }
  setTimestamp(timestamp: number):void {
    this._timestamp = timestamp
  }
}
