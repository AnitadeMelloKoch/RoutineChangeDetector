import { Component } from '@angular/core';

import Meyda from 'meyda/dist/web/meyda'
declare var audioinput: any

@Component({
  selector: 'app-tab3',
  templateUrl: 'tab3.page.html',
  styleUrls: ['tab3.page.scss']
})
export class Tab3Page {

  recording = false

  constructor() {
    audioinput.checkMicrophonePermission(function(hasPermission) {
      if (hasPermission) {
        console.log("We already have permission to record.");
            // startCapture();
      } 
      else {	        
            // Ask the user for permission to access the microphone
        audioinput.getMicrophonePermission(function(hasPermission, message) {
          if (hasPermission) {
            console.log("User granted us permission to record.");
                    // startCapture();
          } else {
            console.warn("User denied permission to record.");
          }
        });
      }
    });
  }

  private readonly _mfccBuffer = 1024
  private _prevBuffer = new Array(this._mfccBuffer).fill(0);

  private _audioInputEvent = (event) => {
    console.log( "Audio data received: " + event.data.length + " samples" )
    console.log(event)
    let audData: number[]
    audData = Array.from(event.data)

    let normFactor = 0
    audData.forEach(element => {
      if (Math.abs(element) > normFactor){
        normFactor = Math.abs(element)
      }
    });
    let normData: number[]
    normData = []
    audData.forEach(element => {
      normData.push(element/normFactor)
    });

    console.log({'audData':audData, 'normData': normData, 'normFactor': normFactor})

    Meyda.bufferSize = this._mfccBuffer
    Meyda.melBands = 40
    Meyda.sampleRate = 22050
    console.log(Meyda.extract('mfcc', normData, this._prevBuffer))
    this._prevBuffer = normData
  }
  private _audioErrorEvent = (error) => {
    console.log(error)
    this.stopRecord()
  }

  captureCfg = {
    sampleRate: audioinput.SAMPLERATE.CD_HALF_22050Hz ,//16000,
    bufferSize: this._mfccBuffer,
    channels: audioinput.CHANNELS.MONO, // 1
    format: audioinput.FORMAT.PCM_16BIT, 
    audioSourceType: audioinput.AUDIOSOURCE_TYPE.DEFAULT,
    normalize: false
  }

  public startRecord(){
    this.recording = true
    audioinput.start(this.captureCfg)
    window.addEventListener('audioinput', this._audioInputEvent, false)
    window.addEventListener('audioinputerror', this._audioErrorEvent, false)
  }
  public stopRecord(){
    this.recording = false
    audioinput.stop()
    window.removeEventListener('audioinput', this._audioInputEvent, false)
    window.removeEventListener('audioinputerror', this._audioErrorEvent, false)
  }
}
