import { Injectable } from '@angular/core';
import { Storage } from '@ionic/storage'
import { Activity } from 'src/app/classes/activity';
import { RecordedData } from '../RecorderManager/recorder-manager.service';
import { ReplaySubject } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class StorageService {

  private _recordDataKey: string
  private _activityHistoryKey: string
  private _dbReady: boolean
  private _recordData: RecordedData[]
  private _activityHistory: Activity[]
  private _replaySubject: ReplaySubject<boolean>

  constructor(private _storage: Storage) {
    this._replaySubject = new ReplaySubject<boolean>(1)
    this._dbReady = false
    this._replaySubject.next(this._dbReady)
    this._recordDataKey = 'data_key'
    this._activityHistoryKey = 'action_key'
    this._storage.ready().then(() => {
      this._checkIfKeyExistsElseMake(this._recordDataKey).then( () => { 
        this._setVarRecordData().then(() => {
          this._checkLists()
        })
      })
      this._checkIfKeyExistsElseMake(this._activityHistoryKey).then( () => { 
        this._setVarActivityHistory().then(() => {
          this._checkLists()
        })
      })
    })  
  }
  
  private _checkLists() {
    if (this._recordData !== undefined && this._activityHistory !== undefined){
      this._dbReady = true
      this._replaySubject.next(this._dbReady)
    }
  }

  /* resolves true if the key exists, resolves false if it was created */ 
  private _checkIfKeyExistsElseMake(key: string): Promise<boolean> {
    return new Promise( resolve => {
      this._storage.get(key).then(val => {
        if(val == undefined){
          this._storage.set(key, [])
            .then(() => {
              resolve(false)
            })
        } else {
          resolve(true)
        }
      })
    })
  }

  private _setVarRecordData(): Promise<void>{
    return new Promise(resolve => {
      this._storage.get(this._recordDataKey).then(val => {
        this._recordData = val
        resolve()
      })
    })
  }

  private _setVarActivityHistory(): Promise<void>{
    return new Promise(resolve => {
      this._storage.get(this._activityHistoryKey).then(val => {
        this._activityHistory = val
        resolve()
      })
    })
  }

  public addRecordData(record: RecordedData): Promise<void> {
    return new Promise((resolve, reject) => {
      if(!this._dbReady){
        reject(Error("Keystore DB not ready."))
      }
      this._recordData.push(record)
      this._storage.set(this._recordDataKey, this._recordData).then(() => {
        resolve()
      })
    })
  }

  public addActivityHistory(activity: Activity): Promise<void>{
    return new Promise((resolve, reject) => {
      if(!this._dbReady){
        reject(Error("Keystore DB not ready."))
      }
      this._activityHistory.push(activity)
      if(this._activityHistory.length > 96){
        while(this._activityHistory.length > 96) {
          this._activityHistory.shift()
        }
      }
      this._storage.set(this._activityHistoryKey, this._activityHistory).then(() => {
        resolve()
      })
    })
  }

  public clearRecordData(): Promise<void>{
    return new Promise((resolve, reject) => {
      if(!this._dbReady){
        reject(Error("Keystore DB not ready."))
      }
      this._storage.remove(this._recordDataKey).then( () => {
        this._checkIfKeyExistsElseMake(this._recordDataKey).then( () => { 
          this._setVarRecordData().then(() => {
            console.log("Cleared and recreated key")
            resolve()
          })
        })
      })
    })
  }

  public clearActivityHistory(): Promise<void>{
    return new Promise((resolve, reject) => {
      if(!this._dbReady){
        reject(Error("Keystore DB not ready."))
      }
      this._storage.remove(this._activityHistoryKey).then( () => {
        this._checkIfKeyExistsElseMake(this._activityHistoryKey).then( () => { 
          this._setVarActivityHistory().then(() => {
            resolve()
          })
        })
      })
    })
  }

  public getRecordData(): any[]{
    return this._recordData
  }
  public getActivityHistory(): any[]{
    return this._activityHistory
  }
  public isReady(): boolean {
    return this._dbReady
  }
  public getReadySubject(): ReplaySubject<boolean>{
    return this._replaySubject
  }

}
