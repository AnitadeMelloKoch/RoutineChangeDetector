import { Component } from '@angular/core';
import { HttpService } from '../../services/Http/http.service';
import { RecorderManagerService } from '../../services/RecorderManager/recorder-manager.service';
import { StorageService } from '../../services/Storage/storage.service';
import { Activity } from 'src/app/classes/activity'
import { Device } from '@ionic-native/device/ngx'

declare var PhoneCallTrap: any;
declare var RingerMode: any;

@Component({
  selector: 'app-tab4',
  templateUrl: './tab4.page.html',
  styleUrls: ['./tab4.page.scss'],
})
export class Tab4Page {

  private bs: any

  // private fileName: string
  // private filePath: string

  private recording: boolean
  // private result: string

  constructor( private _http: HttpService, private _recman: RecorderManagerService, private _storage: StorageService, private _device: Device) {
    this.recording = false
  }

  public record(){
    this.recording = true
    this._recman.recordSingleData().then( recdata => {
      this.recording = false
    })    
  }

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

  public doSendData(){
    let data = this._storage.getRecordData()
    this.logData()
    let tempRecords = []
    let subject = this._recman.dataSubject().subscribe((recdata) => {
      tempRecords.push(recdata)
    })
    this._http.sendData({recordData: data}).then(result => {
      console.log(result)
      subject.unsubscribe()
      console.log("unsubscribed")
      this._storage.clearRecordData().then(() => {
        console.log("Cleared Records")
        tempRecords.forEach(element => {
          console.log("adding interim record")
          this._storage.addRecordData(element)
        });
      })
    }).catch( err => {
      console.log(err)
      subject.unsubscribe()
    })
  }

  public doClassification(){
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
      } else {
        console.log("No new classifications")
      }
    }).catch(err => {
      console.log(err)
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

  public doDetection(){
    let uuid = this._device.uuid
    this._http.detectAnomalies(uuid).then(status => {
      console.log("Anomaly Detection complete")
      console.log(status)
      if(status){
        // this.doUpdate()
      }
    }).catch(err => console.log(err))
  }

  public doUpdate(){
    let uuid = this._device.uuid
    let numStoredActivities = 96// this._storage.getActivityHistory().length
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
        })
      })
    }).catch((e) => {
      console.log(e)
    })
  }

  ngOnInit() {
  }

}
