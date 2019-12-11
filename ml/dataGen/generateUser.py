import numpy as np
import argparse
import sys

day = 0
hour = 1
minute = 2
lyingDown = 3 
sitting = 4 
walking = 5 
running = 6 
bicycling = 7
sleeping = 8 
labWork = 17
inClass = 18
inMeeting = 19
drivingDriver = 9
drivingPass = 10
exercise = 11
cooking =20 
shopping = 12 
strolling = 13 
drinkingAlcohol = 21 
shower = 22
cleaning = 23
doingLaundry = 24
washingDishes = 25 
watchingTv = 26 
surfInternet = 27
singing = 28
talking = 29
computerWork = 30
eating =31
toilet = 32
grooming = 33
dressing= 34
stairsUp = 14
stairsDown = 15
standing = 16
withCoworker = 35 
withFriends = 36
mainWorkplace = 37
indoors = 38
outdoors = 39
inCar = 40
onBus = 41
home = 42
restaurant = 43
atParty = 44
atBar = 45
beach = 46
atGym = 47
elevator = 48
atSchool = 49
anomalie = 50

def workDay(user, daynum, minToWork, timeSleep, timeWake, workHours):
    index = daynum*1440
    wakeIndex = (60*timeWake) + int(np.random.uniform(-5,5)) + (daynum*1440)
    while (index < wakeIndex):
        user[index, sleeping] = 1
        user[index, home] = 1
        user[index, lyingDown] = 1
        index += 1
    walk = index + int(np.random.uniform(1, 4))
    while (index < walk):
        user[index, walking] = 1
        user[index, home] = 1
        index += 1
    groom = index + int(np.random.uniform(5,25))
    while (index < groom):
        user[index, grooming] = 1
        user[index, home] = 1
        index += 1
    walk = index + int(np.random.uniform(1,4))
    while (index < walk):
        user[index, walking] = 1
        user[index, home] = 1
        index += 1
    arrive = index + minToWork + int(np.random.uniform(-5, 20))
    while (index < arrive):
        user[index, drivingDriver] = 1
        user[index, inCar] = 1
        index += 1
    leave = arrive + (workHours*60) + int(np.random.uniform(-60, 61))
    while (index < leave):
        activity = int(np.random.uniform(0, 4))
        if(activity == 0):
            walk = index + 3
            while(index < walk):
                user[index, walking] = 1
                user[index, mainWorkplace]
                index += 1
            time = index + int(np.random.uniform(15, 81))
            while(index < time):
                user[index, mainWorkplace] = 1
                user[index, inMeeting] = 1
                index += 1
            walk = index + 3
            while(index < walk):
                user[index, walking] = 1
                user[index, mainWorkplace]
                index += 1
        elif(activity == 1 or activity == 3):
            time = index + int(np.random.uniform(20, 81))
            while(index < time):
                user[index, mainWorkplace] = 1
                user[index, computerWork] = 1
                user[index, sitting] = 1
                index += 1
        else:
            time = index + int(np.random.uniform(2, 11))
            while(index < time):
                user[index, mainWorkplace] = 1
                user[index, talking] = 1
                index += 1
    arrive = index + minToWork + int(np.random.uniform(-5, 20))
    while (index < arrive):
        user[index, drivingDriver] = 1
        user[index, inCar] = 1
        index += 1
    sleepIndex = (60*timeSleep) + int(np.random.uniform(-50, 50)) + (daynum*1440)
    while (index < sleepIndex):
        activity = int(np.random.uniform(0, 9))
        if(activity == 0):
            time = index + int(np.random.uniform(3, 50))
            while(index < time):
                user[index, home] = 1
                user[index, exercise] = 1
                index += 1
        elif(activity == 1):
            time = index + int(np.random.uniform(3, 30))
            while(index < time):
                user[index, home] = 1
                user[index, cooking] = 1
                user[index, standing] = 1
                index += 1
        elif(activity == 2):
            time = index + int(np.random.uniform(3, 10))
            while(index < time):
                user[index, home] = 1
                user[index, shower] = 1
                index += 1
        elif(activity == 3):
            time = index + int(np.random.uniform(3, 10))
            while(index < time):
                user[index, home] = 1
                user[index, washingDishes] = 1
                user[index, standing] = 1
                index += 1
        elif(activity == 4 or activity == 6):
            time = index + int(np.random.uniform(3, 50))
            while(index < time):
                user[index, home] = 1
                user[index, watchingTv] = 1
                user[index, sitting] = 1
                index += 1
        elif(activity == 5 or activity == 7):
            time = index + int(np.random.uniform(3, 50))
            while(index < time):
                user[index, home] = 1
                user[index, surfInternet] = 1
                user[index, sitting] = 1
                index += 1
        else:
            time = index + int(np.random.uniform(3, 20))
            while(index < time):
                user[index, home] = 1
                user[index, eating] = 1
                user[index, sitting] = 1
                index += 1
    while (index < 1440*(daynum+1)):
        user[index, sleeping] = 1
        user[index, home] = 1
        user[index, lyingDown] = 1
        index += 1

def weekendDay(user, daynum, timeSleep, timeWake):
    index = daynum*1440
    wakeIndex = (60*timeWake) + int(np.random.uniform(-5,85)) + (daynum*1440)
    while (index < wakeIndex):
        user[index, sleeping] = 1
        user[index, home] = 1
        user[index, lyingDown] = 1
        index += 1
    sleepTime = (60*timeSleep) + int(np.random.uniform(-50, 80)) + (daynum*1440)
    while (index < sleepTime):
        activity = int(np.random.uniform(0, 8))
        if(activity == 0):
            time = index + int(np.random.uniform(10, 30))
            while (index < time):
                user[index, running] = 1
                index += 1
        elif(activity == 1):
            time = index + int(np.random.uniform(2, 10))
            while (index < time):
                user[index, walking] = 1
                user[index, home]
                index += 1
        elif(activity == 2):
            time = index + int(np.random.uniform(10, 30))
            while (index < time):
                user[index, cooking] = 1
                user[index, home] = 1
                index += 1
        elif(activity == 3):
            time = index + int(np.random.uniform(20, 120))
            driveTime = index + int(np.random.uniform(10, 30))
            while (index < driveTime):
                user[index, drivingDriver] = 1
                index += 1
            while (index < time):
                user[index, shopping] = 1
                index += 1
            driveTime = index + int(np.random.uniform(10, 30))
            while (index < driveTime):
                user[index, drivingDriver] = 1
                index += 1
        elif(activity == 4):
            time = index + int(np.random.uniform(10, 30))
            while (index < time):
                user[index, strolling] = 1
                user[index, outdoors] = 1
                index += 1
        elif(activity == 5):
            time = index + int(np.random.uniform(20, 120))
            driveTime = index + int(np.random.uniform(10, 30))
            while (index < driveTime):
                user[index, drivingDriver] = 1
                index += 1
            while (index < time):
                user[index, drinkingAlcohol] = 1
                user[index, atBar] = 1
                user[index, withFriends]
                index += 1
            driveTime = index + int(np.random.uniform(10, 30))
            while (index < driveTime):
                user[index, drivingDriver] = 1
                index += 1
        elif(activity == 6):
            time = index + int(np.random.uniform(10, 30))
            while (index < time):
                user[index, cleaning] = 1
                user[index, home] = 1
                index += 1
        else:
            time = index + int(np.random.uniform(20, 120))
            driveTime = index + int(np.random.uniform(10, 30))
            while (index < driveTime):
                user[index, drivingDriver] = 1
                index += 1
            while (index < time):
                user[index, talking] = 1
                user[index, withFriends]
                index += 1
            driveTime = index + int(np.random.uniform(10, 30))
            while (index < driveTime):
                user[index, drivingDriver] = 1
                index += 1
    while (index < 1440*(daynum+1)):
        user[index, sleeping]
        index += 1

def anomalous(user, daynum):
    index = daynum*1440
    dayEnd = (daynum + 1)*1440
    activity = int(np.random.uniform(0,4))
    if (activity == 0):
        time = index + int(np.random.uniform(5, 120))
        while (index < time and index < dayEnd):
            user[index, sleeping] = 1
            user[index, lyingDown] = 1
            user[index, home] = 1
            user[index, anomalie] = 1
            index += 1
    elif (activity == 1):
        time = index + int(np.random.uniform(5, 120))
        while (index < time and index < dayEnd):
            user[index, drinkingAlcohol] = 1
            user[index, home] = 1
            user[index, anomalie] = 1
            index += 1
    elif (activity == 2):
        time = index + int(np.random.uniform(5, 120))
        while (index < time and index < dayEnd):
            user[index, lyingDown] = 1
            user[index, home] = 1
            user[index, anomalie] = 1
            index += 1
    else:
        time = index + int(np.random.uniform(5, 120))
        while (index < time and index < dayEnd):
            user[index, watchingTv] = 1
            user[index, home] = 1
            user[index, anomalie] = 1
            index += 1

def main(numDays, hoursSleeping, timeWake, workHours, anomaliePercent):

    if (anomaliePercent > 1):
        sys.exit("Percentge anomalie must be less than 1")

    totMinutes = 1440*numDays
    user = np.zeros((totMinutes, 51))


    index = 0
    for thisDay in range(numDays):
        numDay = thisDay % 7
        for thisHour in range(24):
            for thisMinute in range(60):
                user[index, day] = numDay
                user[index, hour] = thisHour
                user[index, minute] = thisMinute
                index += 1

    timeSleep = 24 - (hoursSleeping - timeWake)

    index = 0
    today = 0
    minToWork = int(np.random.uniform(15, 45))
    while (today < (numDays)):
        print("today")
        isAnomaly = np.random.uniform(0,1) < anomaliePercent
        if (isAnomaly):
            print("anomaly")
            anomalous(user, today)
        else: 
            print("not anomaly")
            if (day < 6):
                workDay(user, today, minToWork, timeSleep, timeWake, workHours)
            else:
                weekendDay(user, today, timeSleep, timeWake)
        today += 1
    userShort = np.zeros((int(totMinutes/15), 51))

    count = 0
    for index in range(totMinutes):
        if(user[index, minute]%15 == 0):
            userShort[count] = user[index]
            count += 1
    np.savetxt("text.csv", user, delimiter=",")
    np.savetxt("textShort.csv", userShort, delimiter=",")

    

if __name__ == '__main__':
    AP = argparse.ArgumentParser()
    AP.add_argument("--days", type=int, default=1, help="Number of days to generate")
    AP.add_argument("--hours_slept", type=int, default=7, help="Number of hours slept during the week")
    AP.add_argument("--time_wakeup", type=int, default=6, help="Time person walks up")
    AP.add_argument("--work_hours", type=int, default=8, help="Numbers of hours spent at work")
    AP.add_argument("--percentage_anomalie", type=float, default=0.05, help="Decimal number representing the likelihood of an anomalie")

    parsed = AP.parse_args()

    main(numDays=parsed.days,
        hoursSleeping=parsed.hours_slept,
        timeWake=parsed.time_wakeup,
        workHours=parsed.work_hours,
        anomaliePercent=parsed.percentage_anomalie)