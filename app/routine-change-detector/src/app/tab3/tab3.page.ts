import { Component } from '@angular/core';
import { File} from '@ionic-native/file/ngx'
import { Media, MediaObject} from '@ionic-native/media/ngx';
import { Platform } from '@ionic/angular';

// import * as AV from 'av'
// import * as decode from 'audio-decode'
// import 'aac'
// import * as toWav from 'audiobuffer-to-wav'
// import * as WavParser from './wav-parser.js'

@Component({
  selector: 'app-tab3',
  templateUrl: 'tab3.page.html',
  styleUrls: ['tab3.page.scss']
})
export class Tab3Page {

  recording: boolean = false
  filePath: string
  fileName: string
  audio: MediaObject
  audioList: any[] = []

  constructor(
    private media: Media,
    private file: File,
    public platform: Platform
    ) {
  }

  getAudioList() {
    if(localStorage.getItem("audiolist")) {
      this.audioList = JSON.parse(localStorage.getItem("audiolist"));
      // localStorage.removeItem("audiolist")
      console.log(this.audioList);
    }
  }

  ionViewWillEnter() {
    this.getAudioList();
  }

  startRecord() {
    if (this.platform.is('ios')) {
      this.fileName = 'record' + new Date().getDate() + new Date().getMonth() + new Date().getFullYear() + new Date().getHours() + new Date().getMinutes() + new Date().getSeconds() + '.wav';
      this.filePath = this.file.documentsDirectory.replace(/file:\/\//g, '') + this.fileName;
      this.audio = this.media.create(this.filePath);
    } else if (this.platform.is('android')) {
      this.fileName = 'record' + new Date().getDate() + new Date().getMonth() + new Date().getFullYear() + new Date().getHours() + new Date().getMinutes() + new Date().getSeconds() + '.aac';
      this.filePath = this.file.externalDataDirectory.replace(/file:\/\//g, '') + this.fileName;
      this.audio = this.media.create(this.filePath);
    }
    this.audio.startRecord();
    this.recording = true;
  }

  stopRecord() {
    this.audio.stopRecord();
    let data = { filename: this.fileName };
    this.audioList.push(data);
    localStorage.setItem("audiolist", JSON.stringify(this.audioList));
    this.recording = false;
    this.getAudioList();
  }

  playAudio(file,idx) {
    if (this.platform.is('ios')) {
      this.filePath = this.file.documentsDirectory.replace(/file:\/\//g, '') + file;
      this.audio = this.media.create(this.filePath);
    } else if (this.platform.is('android')) {
      this.filePath = this.file.externalDataDirectory.replace(/file:\/\//g, '') + file;
      this.audio = this.media.create(this.filePath);
    }


    // if (this.platform.is('ios')) {}
    // else if (this.platform.is('android')) {
    //   this.file.readAsArrayBuffer(this.file.externalDataDirectory, file)
    //     .then((arrayBuffer)=>{
    //       console.log(arrayBuffer)
    //       decode(arrayBuffer)
    //         .then( audioBuffer => {
    //           console.log(audioBuffer)
    //           let wav = toWav(audioBuffer)
    //           console.log(typeof(wav))
    //           console.log(wav)
    //         })
    //         .catch( err => {
    //           console.log(err)
    //         })
        
    //     // let parsed = WavParser(arrayBuffer)
    //     // console.log(parsed)
    //     })
    //     .catch(err=>{
    //       console.log(err)
    //     })
    // }
    
    this.audio.play();
    this.audio.setVolume(0.8);
  }

  // calculateMFCCs(inputFileName, inputFilePath, outputFileName, outputFilePath, options?){

  //   this.file.checkFile(inputFilePath, inputFileName)
  //     .then((result) => {
  //       if(result){
  //         console.log("Input File Found")
  //       } else {
  //         console.log("Input File Not Found")
  //         return false
  //       }
  //     }).catch( err => { 
  //       console.log(err) 
  //     })
  //   this.file.checkFile(outputFilePath, outputFileName)
  //     .then( (result) => {
  //       if(result){
  //         console.log("Existing output file found. Replacing file.")
  //       } else {
  //         console.log("No existing output file found. Good.")
  //       }
  //     })
  //     .catch((err)=>{
  //       console.log(err)
  //     }) 

  //   let FRAME_SIZE = parseInt(options.frame_size) || 512
  //   let HOP_SIZE = parseInt(options.hop_size) || FRAME_SIZE
  //   Meyda.bufferSize = FRAME_SIZE
  //   Meyda.hopSize = HOP_SIZE
  //   Meyda.windowingFunction = options.windowing_function || 'hanning'

  //   let outputFormat = options.format || 'csv'
  //   let features = {}
  //   let featuresToExtract = ['mfcc']
  //   features[featuresToExtract[1]] = []

  //   // utility to convert typed arrays to normal arrays
  //   function typedToArray(t) {
  //     return Array.prototype.slice.call(t);
  //   }

  //   // utility to convert arrays to typed F32 arrays
  //   function arrayToTyped(t) {
  //     return Float32Array.from(t);
  //   }

  //   //helper method to extract features for this chunk
  //   function extractFeatures(chunk) {
  //     //make it a F32A for efficiency
  //     let frame = arrayToTyped(chunk);
  //     //run the extraction of selected features
  //     let fset = Meyda.extract(featuresToExtract, frame);
  //     for (let j = 0; j < featuresToExtract.length; j++) {
  //       let feature = fset[featuresToExtract[j]];
  //       features[featuresToExtract[j]].push(feature);
  //     }
  //   }

  //   this.file.createFile(outputFilePath, outputFileName, true)
  //                   .then( (fileEntry) => {console.log("File Created")} )
  //                   .catch( (err) => {console.log(err)})

  //   //var wstream = fs.createWriteStream(outputFile)
  //   // utility for outputting to the stream
  //   function output(val){
  //     this.file.writeFile(outputFilePath, outputFileName, val,{append: true})
  //   }
    

  //   //this is a buffer
  //   var buffer = []
  //   var frameCount = 0

  //   let wl = new WavLoader(
  //     function(chunk){
  //       let _chunk = typedToArray(chunk) // convert to normal array so we can concatenate
  //       if (_chunk.length > FRAME_SIZE) { // if so, we'll extract stuff from it frame by frame, until we're left with something that's short enough to buffer
  //         while(_chunk.length > FRAME_SIZE) {
  //           let frame = _chunk.slice(0, FRAME_SIZE)
  //           _chunk.splice(0, HOP_SIZE)
  //           extractFeatures(frame)
  //           frameCount++
  //         }
  //       }
  //       buffer = buffer.concat(_chunk);//if we're long enough, splice the frame, and extract features on it
  //       while (buffer.length >= FRAME_SIZE) {
  //         extractFeatures(buffer.slice(0, FRAME_SIZE))
  //         buffer.splice(0, HOP_SIZE)
  //         frameCount++
  //       }
  //     },
  //     function(data) {
  //       //check if there's still something left in our buffer
  //       if (buffer.length) {
  //         //zero pad the buffer at the end so we get a full frame (needed for successful spectral analysis)
  //         for (let i = buffer.length; i < 2 * FRAME_SIZE - HOP_SIZE; i++) {
  //           buffer.push(0);
  //         }
  //         //extract features for zero-padded frame
  //         while (buffer.length >= FRAME_SIZE) {
  //           extractFeatures(buffer.slice(0, FRAME_SIZE));
  //           buffer.splice(0, HOP_SIZE);
  //           frameCount++;
  //         }
  //       }
  //       if(outputFormat == 'json') {
  //         console.log('Writing to ' + outputFileName + '...\n');
  //         output(JSON.stringify(features, null, 4));
  //       } else if (outputFormat == 'csv'){
  //         console.log('Writing to ' + outputFileName + '...\n');
  //         for(let i = 0; i < featuresToExtract.length; i++){
  //           output(featuresToExtract[i].toString());
  //           output(i == featuresToExtract.length-1 ? '' : ',');
  //         }

  //         output('\n');
  //         for(let i=0; i<frameCount; i++){
  //           for(let j=0; j<featuresToExtract.length; j++){
  //             var feature = features[featuresToExtract[j]];
  //             if(typeof feature[i] === 'object'){
  //               for(let f = 0; f < Object.keys(feature[i]).length; f++)
  //                 output(feature[i][f] + ',');
  //                 output(j == featuresToExtract.length-1 ? '' : ',');
  //               }
  //             else{
  //               output(feature[i].toString());
  //               output(j == featuresToExtract.length-1 ? '' : ',');
  //             }
  //           }
  //           output('\n');
  //         }

  //       }
  //       console.log('Done.');
  //       console.log('');
  //     }
  //   )
  //   wl.open(inputFilePath.concat( '/', inputFileName))
  // }

}
