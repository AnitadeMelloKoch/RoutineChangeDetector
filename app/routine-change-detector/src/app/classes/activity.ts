export class Activity{
    activityList: string[]
    timestamp: number
    datetime: Date
    anomaly: boolean

    constructor(a_list?: string[], timestamp?: number, anomaly?:boolean){
        this.activityList = a_list || []
        if(anomaly == undefined){
            this.anomaly = undefined
        } else {
            this.anomaly = anomaly
        }
        this.timestamp = timestamp || 0
        this.datetime = new Date(timestamp) || new Date(Date.now())
    }

    toString(): string{
        let a_str = ''
        if(this.anomaly === undefined){
            a_str = "Not Evaluated Yet"
        } else if(this.anomaly){
            a_str = "Anomaly"
        } else {
            a_str = "Not Anomaly"
        }
        return this.datetime.toISOString() + " - " + a_str
    }
}