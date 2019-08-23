import { Injectable } from '@angular/core';

import { Geolocation } from '@ionic-native/geolocation/ngx';
import { Platform } from '@ionic/angular';
import { filter } from 'rxjs/operators';
import { RECORD_TIME } from 'src/app/constants/app-constants'
import { ReplaySubject } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class LocationService {
  
  private _geodataList = []
  private readonly _geolocationOptions = { maximumAge: 0, timeout: 15000, enableHighAccuracy: false }
  private _recording: boolean
  private _replaySubject: ReplaySubject<GeoData>

  constructor(private _geolocation: Geolocation, private _platform: Platform) {
    this._replaySubject = new ReplaySubject<GeoData>(1)
    this._recording = false
    let geoWatchID = this._geolocation.watchPosition(this._geolocationOptions)
                        .pipe(
                          filter( this._geolocationFilter )
                          )
                        .subscribe( this._geolocationSuccess )
  }

  private _geolocationSuccess = (geoloc) => { 
    this._replaySubject.next(new GeoData(geoloc))
    if(this._recording){
      
      this._geodataList.push(new GeoData(geoloc))
    }
   }

  public getSubject(): ReplaySubject<GeoData>{
    return this._replaySubject
  }

  private _geolocationFilter = (p) => {
    if(!(p.coords !== undefined)){
      console.log("Filtering out next value...")
      console.log(p)
    }
    return p.coords !== undefined
  }

  public recordLocation(): Promise<GeoData[]> {
    return new Promise ( (resolve, reject) => {
      this._geodataList = []
      this._recording = true
      setTimeout(() => {
        this._recording = false
        resolve(this._geodataList)
      }, RECORD_TIME)
    })
  }
  
}

export class GeoData {
  latitude: number
  longitude: number
  accuracy: number
  altitude: number
  altitudeAccuracy: number
  heading: number
  speed: number
  timestamp: number

  constructor(location?: Position){
    if(location === undefined){
      console.log("location is undefined")
      this.latitude = 0
      this.longitude = 0
      this.accuracy = 0
      this.altitude = 0
      this.altitudeAccuracy = 0
      this.heading = 0
      this.speed = 0
      this.timestamp = 0
    } else {
      this.latitude = location.coords.latitude || 0
      this.longitude = location.coords.longitude || 0
      this.accuracy = location.coords.accuracy || 0
      this.altitude = location.coords.altitude || 0
      this.altitudeAccuracy = location.coords.altitudeAccuracy || 0
      this.heading = location.coords.heading || 0
      this.speed = location.coords.speed || 0
      this.timestamp = location.timestamp || 0
    }
  }

  setGeoData(location: Position){
    this.latitude = location.coords.latitude
    this.longitude = location.coords.longitude
    this.accuracy = location.coords.accuracy
    this.altitude = location.coords.altitude
    this.altitudeAccuracy = location.coords.altitudeAccuracy
    this.heading = location.coords.heading
    this.speed = location.coords.speed
    this.timestamp = location.timestamp
  }
}
