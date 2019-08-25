import { Component } from '@angular/core';
import { NavController } from '@ionic/angular'

// import { Geolocation } from '@ionic-native/geolocation/ngx';
import { LocationService, GeoData } from 'src/app/services/Location/location.service'

@Component({
  selector: 'app-tab2',
  templateUrl: 'tab2.page.html',
  styleUrls: ['tab2.page.scss']
})
export class Tab2Page {

  private static _G = 9.80665
  acceleration: number
  gyroscope: number
  magnetometer: number
  geoData: GeoData

  constructor(private navCtrl: NavController, private _location: LocationService) {
    this.geoData = new GeoData()
    // Add Event Listener for Acceleration and Gyroscope
    window.addEventListener("devicemotion", (event) => {
      this.acceleration = Math.sqrt(Math.pow(event.accelerationIncludingGravity.x,2)+Math.pow(event.accelerationIncludingGravity.y,2)+Math.pow(event.accelerationIncludingGravity.z,2))/Tab2Page._G
      this.gyroscope = Math.sqrt(Math.pow(event.rotationRate.alpha,2)+Math.pow(event.rotationRate.beta,2)+Math.pow(event.rotationRate.gamma,2))*(Math.PI/180)
    }, true)

    // Add Event Listener for Magnetometer
    window.addEventListener("deviceorientation", (event) => {
      this.magnetometer = Math.sqrt(Math.pow(event.alpha,2) + Math.pow(event.beta,2) + Math.pow(event.gamma,2))
    }, true)

    document.addEventListener("deviceready", () => {
      this._location.getSubject().subscribe((geoloc: GeoData) => {
        this.geoData = geoloc
      })
    }) 
  }
}
