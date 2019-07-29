import { Component } from '@angular/core';

import { Platform } from '@ionic/angular';
import { SplashScreen } from '@ionic-native/splash-screen/ngx';
import { StatusBar } from '@ionic-native/status-bar/ngx';

import { BackgroundMode } from '@ionic-native/background-mode/ngx'

@Component({
  selector: 'app-root',
  templateUrl: 'app.component.html'
})
export class AppComponent {
  constructor(
    private platform: Platform,
    private splashScreen: SplashScreen,
    private statusBar: StatusBar,
    private backgroundMode: BackgroundMode
  ) {
    this.initializeApp();
  }

  initializeApp() {
    this.platform.ready().then(() => {
      this.backgroundMode.on('enable').subscribe(obsEvent => {console.log('enabled')})
      this.backgroundMode.on('disable').subscribe(obsEvent => {console.log('disabled')})
      this.backgroundMode.on('activate').subscribe(obsEvent => {
        console.log('activated')
        this.backgroundMode.disableWebViewOptimizations()
      })
      this.backgroundMode.on('deavtivate').subscribe(obsEvent => {console.log('deactivated')})
      this.backgroundMode.on('failure').subscribe(obsEvent => {console.log('failed')})
      this.statusBar.styleDefault();
      this.splashScreen.hide();
      this.backgroundMode.enable()
      if(this.platform.is('android')){
        this.backgroundMode.overrideBackButton()
        //this.backgroundMode.excludeFromTaskList()
      }
      
      document.addEventListener('pause', (event) => {
        console.log("Paused")
        console.log(this.backgroundMode.isActive())
      }, false)
      document.addEventListener('resume', (event) => {
        console.log("Resumed")
        console.log(this.backgroundMode.isActive())
      }, false)
    });
  }
}
