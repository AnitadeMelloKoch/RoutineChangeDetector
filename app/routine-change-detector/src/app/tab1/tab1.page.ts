import { Component, ViewChild } from '@angular/core';
import { IonInfiniteScroll } from '@ionic/angular';
import { StorageService } from '../services/Storage/storage.service';
import { Subscription } from 'rxjs';
import { HttpService } from '../services/Http/http.service';
import { Action } from '../classes/action';

@Component({
  selector: 'app-tab1',
  templateUrl: 'tab1.page.html',
  styleUrls: ['tab1.page.scss']
})
export class Tab1Page {
  
  items = [];

  @ViewChild(IonInfiniteScroll) infiniteScroll: IonInfiniteScroll;

  constructor(private _storage: StorageService, private _http: HttpService) {
    
  }

  ionViewWillEnter() {
    let subject = new Subscription()
    subject = this._storage.getReadySubject().subscribe((isReady) => {
      if (isReady){
        this.items = this._storage.getActionHistory().slice().reverse()
        subject.unsubscribe()
      }
    })
  }

  loadData(event) {
    console.log('Load More');
    let uuid = '788644910f8e9a57'
    this._http.getNumActivities(uuid).then(num => {
      if (num === this.items.length){
        console.log("Already showing all")
        event.target.complete();
      } else if ( num <= this.items.length + 96){
        // * get the remaining items
        console.log("Getting remaining items")
        this._http.getActivityRange(uuid, this.items.length, num).then((response) => {
          console.log(response)
          let activity_labels = response.activity_labels
          let timestamps = response.timestamps
          let anomaly = response.anomaly
          let length = response.length
          for(let idx = 0; idx < length; idx++){
            let action = new Action(activity_labels[idx], timestamps[idx], anomaly[idx])
            this.items.push(action)
          }
          event.target.complete();
        }).catch(err => {
          console.log(err)
          event.target.complete();
        })
      } else {
        // * Get the next 96 items
        console.log("Getting next 96 items")
        this._http.getActivityRange(uuid, this.items.length, this.items.length + 96).then((response) => {
          console.log(response)
          let activity_labels = response.activity_labels
          let timestamps = response.timestamps
          let anomaly = response.anomaly
          let length = response.length
          for(let idx = 0; idx < length; idx++){
            let action = new Action(activity_labels[idx], timestamps[idx], anomaly[idx])
            this.items.push(action)
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
}
