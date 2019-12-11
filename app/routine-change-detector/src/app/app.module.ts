import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { RouteReuseStrategy } from '@angular/router';

import { IonicModule, IonicRouteStrategy } from '@ionic/angular';
import { SplashScreen } from '@ionic-native/splash-screen/ngx';
import { StatusBar } from '@ionic-native/status-bar/ngx';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';

import  { HttpClientModule } from '@angular/common/http'


import { Geolocation } from '@ionic-native/geolocation/ngx';
import { Media } from '@ionic-native/media/ngx';
import { File } from '@ionic-native/file/ngx';
import { BackgroundMode } from '@ionic-native/background-mode/ngx'
import { Network } from "@ionic-native/network/ngx"
import { HTTP } from '@ionic-native/http/ngx'
import { Device } from '@ionic-native/device/ngx'
import { IonicStorageModule } from '@ionic/storage'
import { Diagnostic } from '@ionic-native/diagnostic/ngx'
import { LocationAccuracy } from '@ionic-native/location-accuracy/ngx'
import { AndroidPermissions } from '@ionic-native/android-permissions/ngx'
import { Toast } from '@ionic-native/toast/ngx'


import { AppStateService } from 'src/app/services/AppState/app-state.service'
import { AccelerometerService } from 'src/app/services/Accelerometer/accelerometer.service'
import { GyroscopeService } from 'src/app/services/Gyroscope/gyroscope.service'
import { MagnetometerService } from 'src/app/services/Magnetometer/magnetometer.service'
import { LocationService } from 'src/app/services/Location/location.service'
import { RecorderManagerService } from 'src/app/services/RecorderManager/recorder-manager.service'
import { PhoneStateService } from 'src/app/services/PhoneState/phone-state.service'
import { HttpService } from 'src/app/services/Http/http.service'
import { MFCCService } from 'src/app/services/MFCC/mfcc.service'
import { StorageService } from 'src/app/services/Storage/storage.service'
import { ServerManagerService } from './services/ServerManager/server-manager.service';


@NgModule({
  declarations: [AppComponent],
  entryComponents: [],
  imports: [BrowserModule, IonicModule.forRoot(), AppRoutingModule, IonicStorageModule.forRoot()],
  providers: [
    StatusBar,
    SplashScreen,
    { provide: RouteReuseStrategy, useClass: IonicRouteStrategy },
    ////////////////////////////////////////////////////////////////
    // Ionic-Native Plugins
    Diagnostic,
    Geolocation,
    LocationAccuracy,
    AndroidPermissions,
    Media,
    File,
    BackgroundMode,
    Network,
    HTTP,
    Device,
    Toast,
    ////////////////////////////////////////////////////////////////
    // Services
    AppStateService,
    AccelerometerService,
    GyroscopeService,
    MagnetometerService,
    LocationService,
    RecorderManagerService,
    PhoneStateService,
    HttpService,
    MFCCService,
    StorageService,
    ServerManagerService
  ],
  bootstrap: [AppComponent]
})
export class AppModule {}
