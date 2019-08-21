import { Component } from '@angular/core';
import { NavController } from '@ionic/angular';

import { fromEvent } from 'rxjs';

import { File } from '@ionic-native/file/ngx'
import { Platform } from '@ionic/angular';

import { Network } from '@ionic-native/network/ngx'

import { HttpService } from '../services/Http/http.service';
import { RecorderManagerService } from '../services/RecorderManager/recorder-manager.service';
import { StorageService } from '../services/Storage/storage.service';

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

  public log(){
    console.log(this._storage.getRecordData())
  }
  public clear(){
    console.log("cleared")
    console.log(this._storage.clearRecordData())
  }

  public doPrediction(){
    let data = this._storage.getRecordData()
    this.log()
    this._http.sendData({recordData: data}).then(result => {
      console.log(result)
    })
  }

  ngOnInit() {
  }

}
