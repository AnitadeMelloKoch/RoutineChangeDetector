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
  constructor(private geolocation: Geolocation) {

    document.addEventListener("deviceready", onDeviceReady, false);
    function onDeviceReady() {
      console.log(navigator.geolocation)
      navigator.geolocation.getCurrentPosition(
        function(resp) {
        console.log(resp)
        // resp.coords.latitude
        // resp.coords.longitude
      }, function(error) {
        console.log('Error getting location', error);
      })
      // window.addEventListener("devicemotion", function(event) {
      //   // process event.alpha, event.beta and event.gamma
      //   this.console.log(event)
      //   let acc = this.document.getElementsByName("lbl:acc").item(0)
      //   acc.innerHTML = (Math.sqrt(Math.pow(event.accelerationIncludingGravity.x,2)+Math.pow(event.accelerationIncludingGravity.y,2)+Math.pow(event.accelerationIncludingGravity.z,2))/Tab2PageModule._G).toPrecision(6)
      //   let gyr = this.document.getElementsByName("lbl:gyro").item(0)
      //   gyr.innerHTML = (Math.sqrt(Math.pow(event.rotationRate.alpha,2)+Math.pow(event.rotationRate.beta,2)+Math.pow(event.rotationRate.gamma,2))*(Math.PI/180)).toPrecision(6)
      // }, true)
    
      // window.addEventListener("deviceorientation", function(event) {
      //   this.console.log(event)
      //   let mag = this.document.getElementsByName("lbl:magn").item(0)
      //   mag.innerHTML = Math.sqrt(Math.pow(event.alpha,2) + Math.pow(event.beta,2) + Math.pow(event.gamma,2)).toPrecision(6)
      // }, true)
    }
    
    
  }
}


