import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { Activity } from 'src/app/classes/activity';
import { AlertController, NavController } from '@ionic/angular';
import { ServerManagerService } from 'src/app/services/ServerManager/server-manager.service';

@Component({
  selector: 'app-edit-activity',
  templateUrl: './edit-activity.page.html',
  styleUrls: ['./edit-activity.page.scss'],
})
export class EditActivityPage implements OnInit {
  private _itemStr: string
  private _item: Activity
  private _datetime: string
  private _selectedLabels
  private _anomaly:string
  private _saving: boolean
  private _orignalAnomaly: boolean

  private _labels = ["lying down","sitting","walking","running","bicycling","sleeping","driving - driver","driving - pass","exercise","shopping", "strolling",
  "stairs - up","stairs - down","standing","lab work","in class","in meeting","cooking","drinking alcohol","shower","cleaning","laundry","washing dishes",
      "watching TV","surfing Internet","singing","talking","computer work","eating","toilet","grooming","dressing","with coworker", "with friends",
          "main workplace","indoors","outdoors","in car","on bus","home","restaurant","at a party","at a bar",'beach','at the gym',"elevator","at school"]
  
  constructor(private _aroute: ActivatedRoute, private _servMan: ServerManagerService, private _alertController: AlertController, private _navCtrl: NavController) {
    this._item = new Activity()
    this._item.datetime = new Date(Date.now())
  }

  ngOnInit() {
    this._saving = false
    this._selectedLabels = []
    this._itemStr = this._aroute.snapshot.paramMap.get('item')
    let temp = JSON.parse(this._itemStr)
    this._item = new Activity(temp.activityList, temp.timestamp, temp.anomaly)
    this._datetime = this._item.datetime.toISOString()
    this._item.anomaly ? this._anomaly = 'true' : this._anomaly = 'false'
    this._orignalAnomaly = this._item.anomaly
    this._item.activityList.forEach(activity => {
      this._selectedLabels.push(this._labels.indexOf(activity).toString())
    });
  }

  private save(){
    this._saving = true
    console.log("save clicked")
    let activityArr = new Array(this._labels.length).fill(0)
    this._selectedLabels.forEach(str => {
      activityArr[Number(str)] = 1
    });
    console.log(activityArr)
    let new_anomaly = true
    this._anomaly === 'true' ? new_anomaly = true : new_anomaly = false 
    console.log(new_anomaly)

    
    this._servMan.updateClassification(this._item.timestamp, activityArr, this._orignalAnomaly, new_anomaly)
      .then( () => {
        this._saving = false
        this._navCtrl.navigateBack('/')
      })
      .catch(async err => {
        console.log(err)
        this._saving = false
        await this.presentAlertMultipleButtons()
      })
  }

  async presentAlertMultipleButtons() {
    const alert = await this._alertController.create({
      header: 'Server Error',
      message: 'Could not complete the operation.',
      buttons: [
        {
          text: 'Cancel',
          role: 'cancel',
          cssClass: 'secondary',
          handler: (blah) => {
            console.log('Confirm Cancel: blah');
          }
        }, {
          text: 'Retry',
          handler: () => {
            console.log('Retyring')
            this.save()
          }
        }
      ]
    });

    await alert.present();
  }

}
