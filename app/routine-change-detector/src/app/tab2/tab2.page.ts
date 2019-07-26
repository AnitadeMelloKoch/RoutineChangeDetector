import { Component } from '@angular/core';
import { NavController } from '@ionic/angular'

import { Geolocation } from '@ionic-native/geolocation/ngx';

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
  geoData = {
    latitude: 0,
    longitude: 0,
    accuracy: 0,
    altitude: 0,
    altitudeAccuracy: 0,
    heading: 0,
    speed: 0,
    timestamp: 0
  }

  constructor(private navCtrl: NavController, private geolocation: Geolocation) {

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
      let geolocationOptions = { maximumAge: 25, timeout: 500, enableHighAccuracy: true };
      let geoWatchId = navigator.geolocation.watchPosition( 
        // GEOLOCATION SUCCESS
        (response) => {
        console.log(response)
        this.geoData.latitude = response.coords.latitude
        this.geoData.longitude = response.coords.longitude
        this.geoData.accuracy = response.coords.accuracy
        this.geoData.altitude = response.coords.altitude
        this.geoData.altitudeAccuracy = response.coords.altitudeAccuracy
        this.geoData.heading = response.coords.heading
        this.geoData.speed = response.coords.speed
        this.geoData.timestamp = response.timestamp
      }, 
      //  GEOLOCATION ERROR
      (error) => {
        console.log(error)
      }, 
      geolocationOptions)
    }, false)    
  }
}
