import { Injectable } from '@angular/core';
import { AppComponent } from 'src/app/app.component';

import Meyda from 'meyda/dist/web/meyda'
declare var audioinput: any

@Injectable({
  providedIn: 'root'
})
export class MFCCService {

  private _mfccList: MFCCList
  private _recording: boolean
  private readonly _mfccBuffer = 1024
  private _audioSamples: number[]

  constructor() {
    this._mfccList = new MFCCList
    this._recording = false
    
    this._audioSamples = []
  }
  private _audioInputEvent = (event) => {
    let audData: number[]
    audData = Array.from(event.data)
    audData.push(audData[audData.length - 1])
    this._audioSamples = this._audioSamples.concat(audData)
  }
  private _audioErrorEvent = (error) => {
    console.log(error)
  }
  private _startRecord(){
    this._audioSamples = []
    this._recording = true
    let _captureCfg = {
      sampleRate: audioinput.SAMPLERATE.CD_HALF_22050Hz ,//16000,
      bufferSize: this._mfccBuffer,
      channels: audioinput.CHANNELS.MONO, // 1
      format: audioinput.FORMAT.PCM_16BIT, 
      audioSourceType: audioinput.AUDIOSOURCE_TYPE.DEFAULT,
      normalizationFactor: 32767.0/3.0 
    }
    audioinput.start(_captureCfg)
    window.addEventListener('audioinput', this._audioInputEvent, false)
    window.addEventListener('audioinputerror', this._audioErrorEvent, false)
  }
  private _stopRecord(){
    this._recording = false
    window.removeEventListener('audioinput', this._audioInputEvent, false)
    window.removeEventListener('audioinputerror', this._audioErrorEvent, false)
    audioinput.stop()

    // ! NORMALIZING
    let normFactor = 0
    this._audioSamples.forEach(element => {
      if (Math.abs(element) > normFactor){
        normFactor = Math.abs(element)
      }
    });
    let normData: number[]
    normData = []
    this._audioSamples.forEach(element => {
      normData.push(element/normFactor)
    });
    this._mfccList.normalizationMult = 1.0/normFactor
    this._audioSamples = null

    // ! Extract MFCCs
    Meyda.bufferSize = this._mfccBuffer
    Meyda.melBands = 40
    Meyda.sampleRate = 22050
    let start_idx = 0
    let prevBuffer = new Array(this._mfccBuffer).fill(0)
    while(start_idx < normData.length){
      let thisBuffer = normData.slice(start_idx, start_idx + this._mfccBuffer)
      let mfccRes = Meyda.extract('mfcc', thisBuffer, prevBuffer)
      this._mfccList.mfcc0.push(mfccRes[0])
      this._mfccList.mfcc1.push(mfccRes[1])
      this._mfccList.mfcc2.push(mfccRes[2])
      this._mfccList.mfcc3.push(mfccRes[3])
      this._mfccList.mfcc4.push(mfccRes[4])
      this._mfccList.mfcc5.push(mfccRes[5])
      this._mfccList.mfcc6.push(mfccRes[6])
      this._mfccList.mfcc7.push(mfccRes[7])
      this._mfccList.mfcc8.push(mfccRes[8])
      this._mfccList.mfcc9.push(mfccRes[9])
      this._mfccList.mfcc10.push(mfccRes[10])
      this._mfccList.mfcc11.push(mfccRes[11])
      this._mfccList.mfcc12.push(mfccRes[12])
      prevBuffer = thisBuffer
      start_idx = start_idx + this._mfccBuffer
    }
  }

  public recordAudio(): Promise<MFCCList>{
    return new Promise((resolve, reject) => {
      this._mfccList = new MFCCList
      this._checkMicPermissions()
        .then(() => {
          this._startRecord()
          setTimeout(()=> {
            this._stopRecord()
          }, AppComponent.recordTime)
        })
        .catch(() => {
          this._mfccList.mfcc0.push(0)
          this._mfccList.mfcc1.push(0)
          this._mfccList.mfcc2.push(0)
          this._mfccList.mfcc3.push(0)
          this._mfccList.mfcc4.push(0)
          this._mfccList.mfcc5.push(0)
          this._mfccList.mfcc6.push(0)
          this._mfccList.mfcc7.push(0)
          this._mfccList.mfcc8.push(0)
          this._mfccList.mfcc9.push(0)
          this._mfccList.mfcc10.push(0)
          this._mfccList.mfcc11.push(0)
          this._mfccList.mfcc12.push(0)
        })
        .finally(() => {
          resolve(this._mfccList)
        })  
    })
  }

  private _checkMicPermissions() {
    return new Promise((resolve, reject) => {
      audioinput.checkMicrophonePermission((hasPermission: boolean) => {
        if (hasPermission) {
          resolve()
        } else {	        
          // Ask the user for permission to access the microphone
          audioinput.getMicrophonePermission((hasPermission: boolean, message: string) => {
            if (hasPermission) {
              resolve()
            } else {
              console.warn("User denied permission to record. " + message);
              reject()
            }
          });
        }
      }) 
    })
  }
}

export class MFCCList{

  mfcc0: number[]
  mfcc1: number[]
  mfcc2: number[]
  mfcc3: number[]
  mfcc4: number[]
  mfcc5: number[]
  mfcc6: number[]
  mfcc7: number[]
  mfcc8: number[]
  mfcc9: number[]
  mfcc10: number[]
  mfcc11: number[]
  mfcc12: number[]
  normalizationMult: number

  constructor(){
    this.mfcc0 = []
    this.mfcc1 = []
    this.mfcc2 = []
    this.mfcc3 = []
    this.mfcc4 = []
    this.mfcc5 = []
    this.mfcc6 = []
    this.mfcc7 = []
    this.mfcc8 = []
    this.mfcc9 = []
    this.mfcc10 = []
    this.mfcc11 = []
    this.mfcc12 = []
    this.normalizationMult = 0
  }
  public toJSON() {
    return {
      mfcc0 : this.mfcc0,
      mfcc1 : this.mfcc1,
      mfcc2 : this.mfcc2,
      mfcc3 : this.mfcc3,
      mfcc4 : this.mfcc4,
      mfcc5 : this.mfcc5,
      mfcc6 : this.mfcc6,
      mfcc7 : this.mfcc7,
      mfcc8 : this.mfcc8,
      mfcc9 : this.mfcc9,
      mfcc10 : this.mfcc10,
      mfcc11 : this.mfcc11,
      mfcc12 : this.mfcc12,
      normalizationMult: this.normalizationMult
    }
  }
}
