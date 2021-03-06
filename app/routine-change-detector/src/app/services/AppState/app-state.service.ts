import { Injectable } from '@angular/core';
import { Platform } from '@ionic/angular';
import { BackgroundMode } from '@ionic-native/background-mode/ngx'
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})

export class AppStateService {
  private appState: AppState
  constructor( private platform: Platform, private backgroundMode: BackgroundMode) {
    this.appState = AppState.ACTIVE
  }

  public onChange(): Observable<string>{
    return new Observable( observer => {
      this.platform.ready().then(() => {
        observer.next(this.getStateString())

        this.backgroundMode.on('activate').subscribe(obsEvent => {
          this.appState = AppState.BACKGROUND
          this.backgroundMode.disableWebViewOptimizations()
          observer.next(this.getStateString())
        })
        this.backgroundMode.on('deactivate').subscribe(obsEvent => {
          this.appState = AppState.ACTIVE
          observer.next(this.getStateString())
        })
        this.backgroundMode.on('failure').subscribe(obsEvent => {
          this.appState = AppState.MISSING
          observer.next(this.getStateString())
        })
      })
    })
  }

  /**
   * getState
   */
  public getState() {
    return this.appState
  } 
  /**
   * getStateString
   */
  public getStateString() {
    let retString: string
    switch(this.appState){
      case AppState.ACTIVE: {
        retString = "ACTIVE"
        break
      }
      case AppState.BACKGROUND: {
        retString = "BACKGROUND"
        break
      }
      case AppState.INACTIVE: {
        retString = "INACTIVE"
        break
      }
      case AppState.MISSING: {
        retString = "MISSING"
        break
      }
      default: {
        retString = "ERROR"
      }
    }
    return retString
  }
}

export enum AppState {ACTIVE, INACTIVE, BACKGROUND, MISSING}

