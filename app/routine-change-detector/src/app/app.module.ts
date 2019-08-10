import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { RouteReuseStrategy } from '@angular/router';

import { IonicModule, IonicRouteStrategy } from '@ionic/angular';
import { SplashScreen } from '@ionic-native/splash-screen/ngx';
import { StatusBar } from '@ionic-native/status-bar/ngx';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';


import { Geolocation } from '@ionic-native/geolocation/ngx';
import { Media } from '@ionic-native/media/ngx';
import { File } from '@ionic-native/file/ngx';
import { BackgroundMode } from '@ionic-native/background-mode/ngx'
import { Network } from "@ionic-native/network/ngx"


import { AppStateService } from 'src/app/services/AppState/app-state.service'
import { AccelerometerService } from 'src/app/services/Accelerometer/accelerometer.service'
import { GyroscopeService } from 'src/app/services/Gyroscope/gyroscope.service'
import { MagnetometerService } from 'src/app/services/Magnetometer/magnetometer.service'
import { LocationService } from 'src/app/services/Location/location.service'
import { AudioSnippetService } from 'src/app/services/AudioSnippet/audio-snippet.service'
import { RecorderManagerService } from 'src/app/services/RecorderManager/recorder-manager.service';

@NgModule({
  declarations: [AppComponent],
  entryComponents: [],
  imports: [BrowserModule, IonicModule.forRoot(), AppRoutingModule],
  providers: [
    StatusBar,
    SplashScreen,
    { provide: RouteReuseStrategy, useClass: IonicRouteStrategy },
    ////////////////////////////////////////////////////////////////
    // Ionic-Native Plugins
    Geolocation,
    Media,
    File,
    BackgroundMode,
    Network,
    ////////////////////////////////////////////////////////////////
    // Services
    AppStateService,
    AccelerometerService,
    GyroscopeService,
    MagnetometerService,
    LocationService,
    AudioSnippetService,
    RecorderManagerService
  ],
  bootstrap: [AppComponent]
})
export class AppModule {}
