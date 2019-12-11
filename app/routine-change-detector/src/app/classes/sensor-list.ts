export class SensorList{
    x: number[]
    y: number[]
    z: number[]
    timestamp: number[]

    constructor(){
      this.x = []
      this.y = []
      this.z = []
      this.timestamp = []
    }

    public toJSON() {
      return {
        x: this.x,
        y: this.y,
        z: this.z,
        timestamp: this.timestamp
      }
    }

    public push(x: number, y: number, z: number, ts: number){
        this.x.push(x)
        this.y.push(y)
        this.z.push(z)
        this.timestamp.push(ts)
      }
  }