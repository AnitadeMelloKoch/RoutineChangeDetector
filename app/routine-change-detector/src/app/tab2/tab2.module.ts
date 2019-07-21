import { IonicModule } from '@ionic/angular';
import { RouterModule } from '@angular/router';
import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { Tab2Page } from './tab2.page';
import { Geolocation } from '@ionic-native/geolocation/ngx';

@NgModule({
  imports: [
    IonicModule,
    CommonModule,
    FormsModule,
    RouterModule.forChild([{ path: '', component: Tab2Page }])
  ],
  declarations: [Tab2Page]
})
export class Tab2PageModule {
  private static _G = 9.80665
  
  private setElementInnerHTML(element: any, text: String){
    if(element == null || text == null){
      console.log({
        Error: "Element or Text is null or undefined", 
        Element: element, 
        Text: text
      })
      if(element != null || text == null){
        this.setElementInnerHTML(element, "Null")
      }
    } else {
      element.innerHTML = text
    }
  }

  constructor(private geolocation: Geolocation) {
    document.addEventListener("deviceready", onDeviceReady, false);
    function onDeviceReady() {

      let locationElems = []
      locationElems.push(document.getElementById("lbl:loc:lat")) // Latutude
      locationElems.push(document.getElementById("lbl:loc:lng")) // Longitude
      locationElems.push(document.getElementById("lbl:loc:acc")) // Accuracy
      locationElems.push(document.getElementById("lbl:loc:alt")) // Altitude
      locationElems.push(document.getElementById("lbl:loc:alt:acc")) // Altitude Accuracy
      locationElems.push(document.getElementById("lbl:loc:hdn")) // Heading
      locationElems.push(document.getElementById("lbl:loc:spd")) // Speed
      locationElems.push(document.getElementById("lbl:loc:tme")) // Timestamp
      

      console.log(document.getElementById("lbl:loc:tme"))

      
      function geolocationSuccess(response){
        console.log(response)
        this.setElementInnerHTML(locationElems[0], response.coords.latitude.toPrecision(6))
        this.setElementInnerHTML(locationElems[1], response.coords.longitude.toPrecision(6))
        this.setElementInnerHTML(locationElems[2], response.coords.accuracy.toPrecision(6))
        this.setElementInnerHTML(locationElems[3], response.coords.altitude.toPrecision(6))
        this.setElementInnerHTML(locationElems[4], response.coords.altitudeAccuracy.toPrecision(6))
        this.setElementInnerHTML(locationElems[5], response.coords.heading.toPrecision(6))
        this.setElementInnerHTML(locationElems[6], response.coords.speed.toPrecision(6))
        this.setElementInnerHTML(locationElems[7], response.coords.timestamp.toPrecision(6))
      }
      function geolocationError(error){
        console.log(error)
      }
      let geolocationOptions = { maximumAge: 25, timeout: 500, enableHighAccuracy: true };

      let geoWatchId = navigator.geolocation.watchPosition(geolocationSuccess, geolocationError, geolocationOptions)
      
      window.addEventListener("devicemotion", function(event) {
        // process event.alpha, event.beta and event.gamma
        let acc = this.document.getElementById("lbl:acc")
        acc.innerHTML = (Math.sqrt(Math.pow(event.accelerationIncludingGravity.x,2)+Math.pow(event.accelerationIncludingGravity.y,2)+Math.pow(event.accelerationIncludingGravity.z,2))/Tab2PageModule._G).toPrecision(6)
        let gyr = this.document.getElementById("lbl:gyro")
        gyr.innerHTML = (Math.sqrt(Math.pow(event.rotationRate.alpha,2)+Math.pow(event.rotationRate.beta,2)+Math.pow(event.rotationRate.gamma,2))*(Math.PI/180)).toPrecision(6)
      }, true)
    
      window.addEventListener("deviceorientation", function(event) {
        let mag = this.document.getElementById("lbl:magn")
        mag.innerHTML = Math.sqrt(Math.pow(event.alpha,2) + Math.pow(event.beta,2) + Math.pow(event.gamma,2)).toPrecision(6)
      }, true)
    }
    
    
  }
}