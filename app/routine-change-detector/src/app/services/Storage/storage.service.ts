import { Injectable } from '@angular/core';
import { Storage } from '@ionic/storage'

@Injectable({
  providedIn: 'root'
})
export class StorageService {

  private _recordDataKey: string
  private _actionHistoryKey: string
  private _dbReady: boolean
  private _recordData: any[]
  private _actionHistory: any[]

  constructor(private _storage: Storage) {
    this._dbReady = false
    this._recordDataKey = 'data_key'
    this._actionHistoryKey = 'action_key'
    this._storage.ready().then(() => {
      this._checkIfKeyExistsElseMake(this._recordDataKey).then( () => { this._setVarRecordData() })
      this._checkIfKeyExistsElseMake(this._actionHistoryKey).then( () => { this._setVarActionHistory() })
      this._dbReady = true
    })  
  }

  /* resolves true if the key exists, resolves false if it was created */ 
  private _checkIfKeyExistsElseMake(key: string): Promise<boolean> {
    return new Promise( resolve => {
      this._storage.get(key).then(val => {
        if(val == null){
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
        this._actionHistoryKey = val
        resolve()
      })
    })
  }

  public addRecordData(record: any): Promise<void> {
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

  public addActionHistory(action: any): Promise<void>{
    return new Promise((resolve, reject) => {
      if(!this._dbReady){
        reject(Error("Keystore DB not ready."))
      }
      this._actionHistory.push(action)
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


}
