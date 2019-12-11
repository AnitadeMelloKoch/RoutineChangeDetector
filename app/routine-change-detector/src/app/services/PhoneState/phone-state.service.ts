import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
declare var PhoneCallTrap: any;

@Injectable({
  providedIn: 'root'
})
export class PhoneStateService {

  constructor() { }


  public onChange(): Observable<string> {
    return new Observable( observer => {  
      PhoneCallTrap.onCall(function(state) {
        observer.next(state)
        //     case "RINGING":
        //     case "OFFHOOK":
        //     case "IDLE":       
      })
    })
  }

}
