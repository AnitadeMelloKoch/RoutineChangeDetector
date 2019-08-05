import { Component } from '@angular/core';
import { NavController } from '@ionic/angular';

import { fromEvent } from 'rxjs';

import { File } from '@ionic-native/file/ngx'
import { Platform } from '@ionic/angular';

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

  constructor( private navCtrl: NavController, /*private batteryStatus: BatteryStatus,*/ private file: File, private platform: Platform ) {

    // For debugging BatteryStatus
    /*if (this.platform.is('android')) {
      this.fileName = 'batteryTest.csv';
      this.filePath = this.file.externalDataDirectory;
    }
    console.log(this.filePath, this.fileName)
    this.file.createFile(this.filePath, this.fileName, true).then(res => {
      console.log(res)
    }).catch(err => console.log(err))   
    */
    let subscr = fromEvent(window, 'batterystatus').subscribe(status => {
      console.log(status)
      console.log(status["level"], typeof(status["level"]))
      console.log(status["isPlugged"], typeof(status["isPlugged"]))

      this.bs = status["isPlugged"]
      /*
      if(this.bs){
        this.file.writeFile(this.filePath, this.fileName, "true,", {append:true}).then(res => {
          console.log(res)
        }).catch(err => console.log(err))
      } else {
        this.file.writeFile(this.filePath, this.fileName, "false,", {append:true}).then(res => {
          console.log(res)
        }).catch(err => console.log(err))
      }   
      */
    })

    PhoneCallTrap.onCall(function(state) {
      console.log("CHANGE STATE: " + state);
  
      switch (state) {
          case "RINGING":
              console.log("Phone is ringing");
              break;
          case "OFFHOOK":
              console.log("Phone is off-hook");
              break;
  
          case "IDLE":
              console.log("Phone is idle");
              break;
      }
    })
    RingerMode.getRingerMode((ret) => {console.log(ret)})

  }

  ngOnInit() {
  }

}
