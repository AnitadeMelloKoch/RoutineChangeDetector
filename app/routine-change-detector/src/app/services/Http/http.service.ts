import { Injectable } from '@angular/core';
import { Platform } from '@ionic/angular';
import { HTTP } from '@ionic-native/http/ngx'

@Injectable({
  providedIn: 'root'
})
export class HttpService {

  constructor(private _http: HTTP, private _platform: Platform) {
  
    this._platform.ready().then(() => {

      
    })
  }

  public sendData(body):Promise<any>{
    return new Promise( (resolve, reject ) => {
      let url = 'https://routinechangedetector.azurewebsites.net/rcd-api/data/'
      
      let headers = {
        'content-type': 'application/json'
      }
      this._http.post(url, body, headers)
        .then(returnedData => {
          console.log('Recieved request')
          resolve(returnedData)
        })
        .catch( err => reject(err))
    })
    
  }
}
