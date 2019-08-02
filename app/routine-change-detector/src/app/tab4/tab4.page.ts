import { Component } from '@angular/core';
import { NavController } from '@ionic/angular';

// import { BatteryStatus, BatteryStatusResponse }  from '@ionic-native/battery-status/ngx';
import { fromEvent } from 'rxjs';

import { File } from '@ionic-native/file/ngx'
import { Platform } from '@ionic/angular';

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

   }

  ngOnInit() {
  }

}
