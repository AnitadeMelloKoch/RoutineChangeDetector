import { Injectable } from '@angular/core';
import { Storage } from '@ionic/storage'
import { Action } from 'src/app/classes/action';
import { RecordedData } from '../RecorderManager/recorder-manager.service';
import { ReplaySubject } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class StorageService {

  private _recordDataKey: string
  private _actionHistoryKey: string
  private _dbReady: boolean
  private _recordData: RecordedData[]
  private _actionHistory: Action[]
  private _replaySubject: ReplaySubject<boolean>

  constructor(private _storage: Storage) {
    this._replaySubject = new ReplaySubject<boolean>(1)
    this._dbReady = false
    this._replaySubject.next(this._dbReady)
    this._recordDataKey = 'data_key'
    this._actionHistoryKey = 'action_key'
    this._storage.ready().then(() => {
      this._checkIfKeyExistsElseMake(this._recordDataKey).then( () => { 
        this._setVarRecordData().then(() => {
          this._checkLists()
        })
      })
      this._checkIfKeyExistsElseMake(this._actionHistoryKey).then( () => { 
        this._setVarActionHistory().then(() => {
          this._checkLists()
        })
      })
    })  
  }
  
  private _checkLists() {
    if (this._recordData !== undefined && this._actionHistory !== undefined){
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

  private _setVarActionHistory(): Promise<void>{
    return new Promise(resolve => {
      this._storage.get(this._actionHistoryKey).then(val => {
        this._actionHistory = val
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

  public addActionHistory(action: Action): Promise<void>{
    return new Promise((resolve, reject) => {
      if(!this._dbReady){
        reject(Error("Keystore DB not ready."))
      }
      this._actionHistory.push(action)
      if(this._actionHistory.length > 96){
        this._actionHistory.shift()
      }
      this._storage.set(this._actionHistoryKey, this._actionHistory).then(() => {
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

  public clearActionHistory(): Promise<void>{
    return new Promise((resolve, reject) => {
      if(!this._dbReady){
        reject(Error("Keystore DB not ready."))
      }
      this._storage.remove(this._actionHistoryKey).then( () => {
        this._checkIfKeyExistsElseMake(this._actionHistoryKey).then( () => { 
          this._setVarActionHistory().then(() => {
            resolve()
          })
        })
      })
    })
  }

  public getRecordData(): any[]{
    return this._recordData
  }
  public getActionHistory(): any[]{
    return this._actionHistory
  }
  public isReady(): boolean {
    return this._dbReady
  }
  public getReadySubject(): ReplaySubject<boolean>{
    return this._replaySubject
  }

}
