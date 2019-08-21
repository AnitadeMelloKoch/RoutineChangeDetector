import { Injectable } from '@angular/core';
import { Platform } from '@ionic/angular';
import { HTTP } from '@ionic-native/http/ngx'
import { jsonpCallbackContext } from '@angular/common/http/src/module';

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
      let url = 'http://10.201.60.13:8000/api/data/'
      
      let headers = {
        'content-type': 'application/json'
      }
      this._http.post(url, body, headers)
        .then(returnedData => {
          console.log('Recieved request')
          if(returnedData.status == 200) {
            resolve(JSON.parse(returnedData.data))
          } else if (returnedData.status == 422){
            console.error("Data is not of the correct form")
            reject(Error('422_UNPROCESSABLE_ENTITY'))
          } else {
            console.error(returnedData)
            reject(Error("GENERAL_ERROR"))
          }
        })
        .catch( err => reject(err))
    })
    
  }
}
