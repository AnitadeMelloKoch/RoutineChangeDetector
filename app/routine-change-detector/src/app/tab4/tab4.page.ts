import { Component } from '@angular/core';
import { NavController } from '@ionic/angular';

import { fromEvent } from 'rxjs';

import { File } from '@ionic-native/file/ngx'
import { Platform } from '@ionic/angular';

import { Network } from '@ionic-native/network/ngx'

import { HttpService } from '../services/Http/http.service';
import { RecorderManagerService } from '../services/RecorderManager/recorder-manager.service';

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

  private result: string

  constructor( private navCtrl: NavController, /*private file: File, private platform: Platform, private network: Network*/ private _http: HttpService, private _recman: RecorderManagerService) {

    // let _battery = fromEvent(window, 'batterystatus').subscribe(status => {
    //   console.log(status)
    //   console.log(status["level"], typeof(status["level"]))
    //   console.log(status["isPlugged"], typeof(status["isPlugged"]))

    //   this.bs = status["isPlugged"]
    //   /*
    //   if(this.bs){
    //     this.file.writeFile(this.filePath, this.fileName, "true,", {append:true}).then(res => {
    //       console.log(res)
    //     }).catch(err => console.log(err))
    //   } else {
    //     this.file.writeFile(this.filePath, this.fileName, "false,", {append:true}).then(res => {
    //       console.log(res)
    //     }).catch(err => console.log(err))
    //   }   
    //   */
    // })
    // let _network = this.network.onchange().subscribe( () => {
    //   console.log(this.network.type)
    // })

    // PhoneCallTrap.onCall(function(state) {
    //   console.log("CHANGE STATE: " + state);
  
    //   switch (state) {
    //       case "RINGING":
    //           console.log("Phone is ringing");
    //           break;
    //       case "OFFHOOK":
    //           console.log("Phone is off-hook");
    //           break;
  
    //       case "IDLE":
    //           console.log("Phone is idle");
    //           break;
    //   }
    // })
    // RingerMode.getRingerMode((ret) => {console.log(ret)})

  }

  public send(){

    this._recman.recordData().then( recdata => {
    // let body = {
    //   body : 'thing'
    // }

    console.log(JSON.stringify(recdata))
    
    this._http.sendData(recdata)//body)
      .then(res => {
        this.result = res
        console.log(this.result)
      })
      .catch( err => {
        this.result = err
        console.log(this.result)
      })
    })

    
  }

  ngOnInit() {
  }

}
