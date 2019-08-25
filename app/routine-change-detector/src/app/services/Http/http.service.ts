import { Injectable } from '@angular/core';
import { Platform } from '@ionic/angular';
import { HTTP } from '@ionic-native/http/ngx'
import { Action } from 'src/app/classes/action';

// import { StorageService } from '../Storage/storage.service';
// import { RecorderManagerService } from '../RecorderManager/recorder-manager.service';

@Injectable({
  providedIn: 'root'
})
export class HttpService {

  constructor(private _http: HTTP, private _platform: Platform/*, private _storage: StorageService, private _recorder: RecorderManagerService*/) {
  
    this._platform.ready().then(() => {  
      this._http.setRequestTimeout(600)   
    })
  }

  public sendData(body):Promise<any>{
    return new Promise( (resolve, reject ) => {
      let url = 'http://192.168.137.1:8000/api/data/'  
      let headers = {
        'content-type': 'application/json'
      }
      this._http.post(url, body, headers)
        .then(response => {
          console.log('Returned from server')
          if(response.status === 200) {
            console.log("Resolved")
            resolve(JSON.parse(response.data))
          } else if (response.status === 422){
            console.error("Data is not of the correct form")
            reject(Error('422_UNPROCESSABLE_ENTITY'))
          } else {
            console.error(response)
            reject(Error("GENERAL_ERROR"))
          }
        })
        .catch( err => reject(err))
    })   
  }

  public classifyExistingData(uuid: string): Promise<any> {
    return new Promise((resolve, reject) => {
      let url = 'http://192.168.137.1:8000/api/predict-actions/'
      let headers = {
        'content-type': 'application/json'
      }
      let params = {
        'uuid': uuid
      }
      this._http.get(url, params, headers).then((response) => {
        console.log("Returned from Server")
        if(response.status === 200){
          // * Success
          console.log("Success")
          resolve(JSON.parse(response.data))
        } else if(response.status === 204) {
          // * No Content
          console.log("No Content")
          resolve({
            success: (JSON.parse(response.data)).success, 
            activity_labels: [], 
            timestamps: []
          })
        } else if(response.status === 422){
          // * Unproccessable Entity
          reject(Error("422_UNPROCESSABLE_ENTITY"))
        } else {
          // * Anything else
          console.error(response)
          reject(Error("GENERAL_ERROR"))
        }
      })
    })
  }

  public detectAnomalies(uuid: string): Promise<boolean> {
    return new Promise((resolve, reject) => {
      let url = 'http://192.168.137.1:8000/api/detect-anomalies/'
      let headers = {
        'content-type': 'application/json'
      }
      let params = {
        'uuid': uuid
      }
      this._http.get(url, params, headers).then((response) => {
        if( response.status === 200 ) {
          // * success
          console.log("Anomaly detection complete")
          resolve(true)
        } else if ( response.status === 204) {
          // * no new classifications
          console.log("No new classifications")
          resolve(false)
        } else if ( response.status === 202 ) {
          // * not enough data points to do detection. All assumed to be non-anomalous
          console.log("Not enough data to run detection")
          resolve(false)
        } else {
          // * anything else
          reject(Error("GENERAL_ERROR"))
        }
      })
    }) 
  }

  public getActivityRange(uuid: string, start: number, end: number): Promise<any>{
    return new Promise((resolve, reject) => {
      let url = 'http://192.168.137.1:8000/api/get-anomalies/'
      let headers = {
        'content-type': 'application/json'
      }
      let params = {
        'uuid': uuid,
        'start': start.toString(),
        'end': end.toString()
      }
      this._http.get(url, params, headers).then((response) => {
        if(response.status === 200){
          resolve(JSON.parse(response.data))
        } else if ( response.status === 422 ) {
          reject(false)
        }
      }).catch((err) => {
        console.log(err)
      })
    })
  }

  public getNumActivities(uuid: string): Promise<number>{
    return new Promise ( (resolve, reject) => {
      let url = 'http://192.168.137.1:8000/api/get-num-user-records/'
      let headers = {
        'content-type': 'application/json'
      }
      let params = {
        'uuid': uuid
      }
      this._http.get(url, params, headers).then((response) => {
        resolve(JSON.parse(response.data).num_records)
      }).catch(err => reject(err))
    })
  }
}
