import { Injectable } from '@angular/core';
import { HttpService } from '../Http/http.service';
import { RecorderManagerService } from '../RecorderManager/recorder-manager.service';
import { StorageService } from '../Storage/storage.service';
import { Device } from '@ionic-native/device/ngx'
import { Activity } from 'src/app/classes/activity';

@Injectable({
  providedIn: 'root'
})
export class ServerManagerService {

  constructor(private _http: HttpService, private _recman: RecorderManagerService, private _storage: StorageService, private _device: Device) { }

  public logData(){
    console.log(this._storage.getRecordData())
  }
  public logActivities(){
    console.log(this._storage.getActivityHistory())
  }
  public clearData(){
    console.log("cleared data")
    this._storage.clearRecordData()
  }
  public clearActivities(){
    console.log("clearned activities")
    this._storage.clearActivityHistory()
  }

  public doSendData(): Promise<void>{
    return new Promise((resolve, reject) => {
      let data = this._storage.getRecordData()
      this.logData()
      let tempRecords = []
      let subject = this._recman.dataSubject().subscribe((recdata) => {
        tempRecords.push(recdata)
      })
      this._http.sendData({recordData: data}).then(result => {
        console.log(result)
        subject.unsubscribe()
        this._storage.clearRecordData().then(() => {
          tempRecords.forEach(element => {
            this._storage.addRecordData(element)
          });
          resolve()
        })
      }).catch( err => {
        reject(err)
        subject.unsubscribe()
      })
    })
  }

  public doClassification(): Promise<boolean>{
    return new Promise((resolve, reject) => {
      let uuid = this._device.uuid
      this._http.classifyExistingData(uuid).then((response) => {
        console.log(response)
        if(response.success){
          console.log("Has returned classifications")
          let activityArr = []
          for(let idx = 0; idx < response.activity_labels.length; idx++){
            let activity = new Activity(response.activity_labels[idx], response.timestamps[idx])
            activityArr.push(activity)
          }
          this._addFromArray(activityArr)
          resolve(true)
        } else {
          console.log("No new classifications")
          resolve(false)
        }
      }).catch(err => {
        console.log(err)
        reject(err)
      })
    })   
  }

  private _addFromArray(arr: Activity[]){
    return new Promise(resolve => {
      if(arr.length > 1){
        let activity = arr.shift()
        this._storage.addActivityHistory(activity).then(() => {
          this._addFromArray(arr)
          resolve()
        })
      } else {
        let activity = arr[0]
        this._storage.addActivityHistory(activity).then(() => {
          console.log("Has added all activities. Resolving.")
          resolve()
        })
      }
    })
  }

  public doDetection(): Promise<boolean>{
    return new Promise((resolve, reject) => {
      let uuid = this._device.uuid
      this._http.detectAnomalies(uuid).then(status => {
        console.log("Anomaly Detection complete")
        console.log(status)
        if(status){
          this.doUpdate().then(() => {
            resolve(true)
          })
        } else {
          resolve(false)
        }
      }).catch(err => reject(err))
    })
  }

  private doUpdate() : Promise <void>{
    return new Promise((resolve, reject) => {
      let uuid = this._device.uuid
      let numStoredActivities = this._storage.getActivityHistory().length
      this._http.getActivityRange(uuid, 0, numStoredActivities).then((result) => {
        console.log(result)
        let activity_labels = result.activity_labels
        let timestamps = result.timestamps
        let anomaly = result.anomaly
        let length = result.length
  
        this._storage.clearActivityHistory().then(() => {
          let activityList = []
          for(let idx = 0; idx < length; idx++){
            let activity = new Activity(activity_labels[idx], timestamps[idx], anomaly[idx])
            activityList.push(activity)
          }
          activityList.reverse()
          this._addFromArray(activityList).then(() => {
            resolve()
          })
        })
      }).catch((e) => {
        reject(e)
      })
    })
  }
}
