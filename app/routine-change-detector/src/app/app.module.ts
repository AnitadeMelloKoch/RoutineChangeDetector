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
import { AppStateService } from 'src/app/services/AppState/app-state.service'

import { BatteryStatus } from '@ionic-native/battery-status/ngx'

@NgModule({
  declarations: [AppComponent],
  entryComponents: [],
  imports: [BrowserModule, IonicModule.forRoot(), AppRoutingModule],
  providers: [
    StatusBar,
    SplashScreen,
    { provide: RouteReuseStrategy, useClass: IonicRouteStrategy },
    Geolocation,
    Media,
    File,
    BackgroundMode,
    AppStateService,
    BatteryStatus
  ],
  bootstrap: [AppComponent]
})
export class AppModule {}
