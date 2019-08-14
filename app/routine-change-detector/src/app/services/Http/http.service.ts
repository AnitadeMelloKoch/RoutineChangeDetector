import { Injectable } from '@angular/core';
import { Platform } from '@ionic/angular';
import { HTTP } from '@ionic-native/http/ngx'

@Injectable({
  providedIn: 'root'
})
export class HttpService {

  // private _httpOptions = {
  //   headers: new HttpHeaders({
  //     'Access-Control-Request-Method': 'GET',
  //     'Access-Control-Request-Headers': 'application/JSON'
  //   })
  // }

  constructor(private _http: HTTP, private _platform: Platform) {

    
    this._platform.ready().then(() => {
      // console.log("Posting")
      // this.post('postString').subscribe( (retData) => console.log(retData) )

      console.log('Getting all UserData')
      
      this._http.get('https://routinechangedetector.azurewebsites.net/api/data', {}, {}).then(returnedData => {
        console.log(returnedData)
      }).catch( err => console.log(err))

    })
  }

  // public post(postData): Observable<any> {
  //   return this._http.post<any>('https://routinechangedetector.azurewebsites.net/posttest', {data: postData})
  // }
}
