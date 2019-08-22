export class Action{
    actionList: string[]
    timestamp: number
    datetime: Date
    anomaly: boolean

    constructor(a_list?: string[], timestamp?: number, anomaly?:boolean){
        this.actionList = a_list || []
        this.anomaly = anomaly || undefined
        this.timestamp = timestamp || 0
        this.datetime = new Date(timestamp * 1000) || new Date(Date.now() * 1000)
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