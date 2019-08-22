import { Component } from '@angular/core';
import { NavController } from '@ionic/angular';

import { fromEvent } from 'rxjs';

import { File } from '@ionic-native/file/ngx'
import { Platform } from '@ionic/angular';

import { Network } from '@ionic-native/network/ngx'

import { HttpService } from '../services/Http/http.service';
import { RecorderManagerService } from '../services/RecorderManager/recorder-manager.service';
import { StorageService } from '../services/Storage/storage.service';
import { Action } from 'src/app/classes/action'

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

  private result: string

  constructor( private navCtrl: NavController, private _http: HttpService, private _recman: RecorderManagerService, private _storage: StorageService) {
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
    console.log(this._storage.getActionHistory())
  }
  public clearData(){
    console.log("cleared data")
    this._storage.clearRecordData()
  }
  public clearActivities(){
    console.log("clearned activities")
    this._storage.clearActionHistory()
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
    let uuid = '788644910f8e9a57'
    this._http.classifyExistingData(uuid).then((response) => {
      console.log(response)
      if(response.success){
        console.log("Has returned classifications")
        let actionArr = []
        for(let idx = 0; idx < response.activity_labels.length; idx++){
          let action = new Action(response.activity_labels[idx], response.timestamps[idx])
          actionArr.push(action)
        }
        this._addFromArray(actionArr)
      } else {
        console.log("No new classifications")
      }
    }).catch(err => {
      console.log(err)
    })
  }

  private _addFromArray(arr: Action[]){
    return new Promise(resolve => {
      console.log(arr)
      if(arr.length > 1){
        let action = arr.shift()
        this._storage.addActionHistory(action).then(() => {
          this._addFromArray(arr)
          resolve()
        })
      } else {
        let action = arr[0]
        this._storage.addActionHistory(action).then(() => {
          console.log("Has added all actions. Resolving.")
          resolve()
        })
      }
    })
  }

  ngOnInit() {
  }

}
