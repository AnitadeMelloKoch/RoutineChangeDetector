import { Component } from '@angular/core';

import { Platform } from '@ionic/angular';
import { SplashScreen } from '@ionic-native/splash-screen/ngx';
import { StatusBar } from '@ionic-native/status-bar/ngx';

import { BackgroundMode } from '@ionic-native/background-mode/ngx'

import { RecorderManagerService } from 'src/app/services/RecorderManager/recorder-manager.service'
import { THIS_EXPR } from '@angular/compiler/src/output/output_ast';


@Component({
  selector: 'app-root',
  templateUrl: 'app.component.html'
})
export class AppComponent {

  constructor(
    private platform: Platform,
    private splashScreen: SplashScreen,
    private statusBar: StatusBar,
    private backgroundMode: BackgroundMode,
    private recorderManagerService: RecorderManagerService
  ) {
    this.initializeApp();
  }

  initializeApp() {
    this.platform.ready().then(() => {
      this.statusBar.styleBlackOpaque();
      this.statusBar.show()
      this.splashScreen.hide();
      this.backgroundMode.enable()
      if(this.platform.is('android')){
        this.backgroundMode.overrideBackButton()
        //this.backgroundMode.excludeFromTaskList()
      }
    });
  }
}
