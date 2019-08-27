import { Component, ViewChild } from '@angular/core';
import { IonInfiniteScroll, NavController } from '@ionic/angular';
import { StorageService } from '../../services/Storage/storage.service';
import { Subscription } from 'rxjs';
import { HttpService } from '../../services/Http/http.service';
import { Activity } from '../../classes/activity';
import { Device } from '@ionic-native/device/ngx'
import { RecorderManagerService } from 'src/app/services/RecorderManager/recorder-manager.service';
import { ServerManagerService } from 'src/app/services/ServerManager/server-manager.service';

@Component({
  selector: 'app-tab1',
  templateUrl: 'tab1.page.html',
  styleUrls: ['tab1.page.scss']
})
export class Tab1Page {
  
  private _items = [];
  private _refreshText: string

  @ViewChild(IonInfiniteScroll) infiniteScroll: IonInfiniteScroll;

  constructor(private _storage: StorageService, private _http: HttpService, private _navCtrl: NavController, private _device: Device, private _servMan: ServerManagerService) {
  }

  ngOnInit(){
    this._refreshText = 'Refreshing...'
  }

  ionViewWillEnter() {
    let subject = new Subscription()
    subject = this._storage.getReadySubject().subscribe((isReady) => {
      if (isReady){
        this._items = this._storage.getActivityHistory().slice().reverse()
        subject.unsubscribe()
      }
    })
  }

  loadData(event) {
    let uuid = this._device.uuid
    this._http.getNumActivities(uuid).then(num => {
      if (num === this._items.length){
        event.target.complete();
      } else if ( num <= this._items.length + 96){
        // * get the remaining items
        this._http.getActivityRange(uuid, this._items.length, num).then((response) => {
          let activity_labels = response.activity_labels
          let timestamps = response.timestamps
          let anomaly = response.anomaly
          let length = response.length
          for(let idx = 0; idx < length; idx++){
            let activity = new Activity(activity_labels[idx], timestamps[idx], anomaly[idx])
            this._items.push(activity)
          }
          event.target.complete();
        }).catch(err => {
          console.log(err)
          event.target.complete();
        })
      } else {
        // * Get the next 96 items
        this._http.getActivityRange(uuid, this._items.length, this._items.length + 96).then((response) => {
          let activity_labels = response.activity_labels
          let timestamps = response.timestamps
          let anomaly = response.anomaly
          let length = response.length
          for(let idx = 0; idx < length; idx++){
            let activity = new Activity(activity_labels[idx], timestamps[idx], anomaly[idx])
            this._items.push(activity)
          }
          event.target.complete();
        }).catch(err => {
          console.log(err)
          event.target.complete();
        })
      }
    })
    .catch( err => {
      console.log(err)
      event.target.complete();
    })
  }

  editActivity(item: Activity){
    this._navCtrl.navigateForward('/tabs/tab1/editActivity/' + JSON.stringify(item))
  }

  doRefresh(event){
    this._refreshText = 'Sending Data...'
    this._servMan.doSendData().then(() => {
      this._refreshText = 'Classifying Activities...'
      this._servMan.doClassification().then((new_classifications) => {
        if(new_classifications){
          this.ionViewWillEnter()
        } 
        this._refreshText = 'Detecting Anomalies...'
        this._servMan.doDetection().then((new_anomalies) => {
          if(new_anomalies){
            this.ionViewWillEnter()
          }
          event.target.complete()
        }).catch( err => {
          console.log(err)
          event.target.complete()
        })
      }).catch(err => {
        console.log(err)
        event.target.complete()
      })
    }).catch(err => {
      console.log(err)
      event.target.complete()
    })
  }
}
