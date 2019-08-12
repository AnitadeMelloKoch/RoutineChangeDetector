import { Injectable } from '@angular/core';
import { AppComponent } from 'src/app/app.component';
import { File, RemoveResult } from '@ionic-native/file/ngx'
import { Media, MediaObject } from '@ionic-native/media/ngx'
import { Platform } from '@ionic/angular'

@Injectable({
  providedIn: 'root'
})
export class AudioSnippetService {

  private _recording: boolean = false
  private _filePath: string
  private _fileName: string
  private _audio: MediaObject

  constructor(private _media: Media, private _file: File, public _platform: Platform) {
    // this._platform.ready().then(()=>{
    // this.recordAudio().then(ret => console.log(ret)).catch(err => console.log(err))})    
  }

  public recordAudio(): Promise<ArrayBuffer> {
    return new Promise( (resolve, reject) => {
      if(this._startRecord()){
        setTimeout(() => {
          this._stopRecord()
            .then(  audioData => {
              resolve(audioData)
            })
            .catch( err => {
              reject(err)
            })
        }, AppComponent.recordTime)
      } else {
        reject(Error("AUDIO_ALREADY_RECORDING"))
      }
    })
  }

  private _startRecord(): boolean {
    if(this._recording){
      return false
    }
    if (this._platform.is('ios')) {
      this._fileName = 'record' + new Date().getDate() + new Date().getMonth() + new Date().getFullYear() + new Date().getHours() + new Date().getMinutes() + new Date().getSeconds() + '.wav';
      this._filePath = this._file.documentsDirectory.replace(/file:\/\//g, '');
      this._audio = this._media.create(this._filePath + this._fileName);
    } else if (this._platform.is('android')) {
      this._fileName = 'record' + new Date().getDate() + new Date().getMonth() + new Date().getFullYear() + new Date().getHours() + new Date().getMinutes() + new Date().getSeconds() + '.aac';
      this._filePath = this._file.externalDataDirectory;
      this._audio = this._media.create(this._filePath + this._fileName);
    }
    this._audio.startRecord();
    this._recording = true;
    return true
  }

  private _stopRecord(): Promise<ArrayBuffer>{
    return new Promise ((resolve,reject)=> {
      if(!this._recording){
        reject(Error("AUDIO_ALREADY_STOPPED"))
      }
      let audioData: ArrayBuffer
      this._audio.stopRecord()
      this._file.checkFile(this._filePath, this._fileName)
        .then((exists) => {
          if (exists){
            audioData = this._handleAudioFile(audioData, reject, resolve);
          } else {
            reject(Error("AUDIO_FILE_DOES_NOT_EXIST"))
          }
        })
        .catch( err => {
          reject(err)
        })
      this._recording = false
    })
  }

  private _handleAudioFile(audioData: ArrayBuffer, reject: (reason?: any) => void, resolve: (value?: ArrayBuffer) => void) {
    this.getAudioData()
      .then(data => {
        audioData = data;
        this.deleteAudioFile()
          .then((rmResult) => {
            if (!rmResult.success) {
              reject(Error("AUDIO_FILE_NOT_DELETED"));
            }
            else {
              resolve(audioData);
            }
          })
          .catch(err => {
            reject(err);
          });
      })
      .catch(err => {
        reject(err);
      });
    return audioData;
  }

  private deleteAudioFile(): Promise<RemoveResult> {
    return new Promise ( (resolve, reject) => {
      this._file.removeFile(this._filePath, this._fileName)
        .then( rmResult => {
          resolve(rmResult)
        })
        .catch( err => {
          reject(err)
        })
    })
    
  }

  // readAsArrayBuffer. Resolves ArrayBuffer
  private getAudioData(): Promise<ArrayBuffer> {
    return new Promise ((resolve, reject) => {
      this._file.readAsArrayBuffer(this._filePath, this._fileName)
      .then( data => {
        resolve(data)
      })
      .catch( err => {
        reject(err)
      })
    })
  }

}
