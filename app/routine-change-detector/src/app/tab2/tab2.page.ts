import { Component } from '@angular/core';
import { Geolocation } from '@ionic-native/geolocation/ngx';

@Component({
  selector: 'app-tab2',
  templateUrl: 'tab2.page.html',
  styleUrls: ['tab2.page.scss']
})
export class Tab2Page {

  private static _G = 9.80665
  
  /*
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
  */

  constructor(private geolocation: Geolocation) {
    document.addEventListener("deviceready", onDeviceReady, false);
    function onDeviceReady() {
     
      function geolocationSuccess(response){
        console.log(response)
      }
      function geolocationError(error){
        console.log(error)
      }
      let geolocationOptions = { maximumAge: 25, timeout: 500, enableHighAccuracy: true };

      let geoWatchId = navigator.geolocation.watchPosition(geolocationSuccess, geolocationError, geolocationOptions)
      
      window.addEventListener("devicemotion", function(event) {
        // process event.alpha, event.beta and event.gamma
        let acc = this.document.getElementById("lbl:acc")
        acc.innerHTML = (Math.sqrt(Math.pow(event.accelerationIncludingGravity.x,2)+Math.pow(event.accelerationIncludingGravity.y,2)+Math.pow(event.accelerationIncludingGravity.z,2))/Tab2Page._G).toPrecision(6)
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
