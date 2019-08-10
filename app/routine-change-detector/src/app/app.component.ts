import { Component } from '@angular/core';

import { Platform } from '@ionic/angular';
import { SplashScreen } from '@ionic-native/splash-screen/ngx';
import { StatusBar } from '@ionic-native/status-bar/ngx';

import { BackgroundMode } from '@ionic-native/background-mode/ngx'


import { AppStateService } from 'src/app/services/AppState/app-state.service'
import { RecorderManagerService } from 'src/app/services/RecorderManager/recorder-manager.service'


@Component({
  selector: 'app-root',
  templateUrl: 'app.component.html'
})
export class AppComponent {

  public static readonly recordTime = 20*1000
  public static readonly recordInterval = 15*60*1000
  public static readonly recordDelay = AppComponent.recordInterval - AppComponent.recordTime

  constructor(
    private platform: Platform,
    private splashScreen: SplashScreen,
    private statusBar: StatusBar,
    private backgroundMode: BackgroundMode,
    private appStateService: AppStateService,
    private recorderManagerService: RecorderManagerService
  ) {
    this.initializeApp();
  }

  initializeApp() {
    this.platform.ready().then(() => {
      this.statusBar.styleDefault();
      this.splashScreen.hide();
      this.backgroundMode.enable()
      if(this.platform.is('android')){
        this.backgroundMode.overrideBackButton()
        //this.backgroundMode.excludeFromTaskList()
      }
      console.log(AppComponent.recordTime)
    });
  }
}
