import pandas as pd
import numpy as np
from sklearn import svm
import argparse

labels = ["day",
"hour",
"minute",
"lyingDown", 
"sitting", 
"walking", 
"running", 
"bicycling",
"sleeping", 
"labWork",
"inClass",
"inMeeting",
"drivingDriver",
"drivingPass",
"exercise",
"cooking", 
"shopping", 
"strolling", 
"drinkingAlcohol", 
"shower",
"cleaning",
"doingLaundry",
"washingDishes", 
"watchingTv", 
"surfInternet",
"singing",
"talking",
"computerWork",
"eating",
"toilet",
"grooming",
"dressing",
"stairsUp",
"stairsDown",
"standing",
"withCoworker", 
"withFriends",
"mainWorkplace",
"indoors",
"outdoors",
"inCar",
"onBus",
"home",
"restaurant",
"atParty",
"atBar",
'beach',
'atGym',
"elevator",
"atSchool",
"anomalie"]

def main(training_dir, num_detect):
    cc =  pd.read_csv(training_dir, names=labels)

    trainSetIndex = len(cc) - num_detect 

    training_set = cc.loc[0:trainSetIndex, :]

    nor_obs = training_set.loc[training_set.anomalie ==0]   
    ano_obs = training_set.loc[training_set.anomalie==1]    

    prediction_data = cc.loc[trainSetIndex:,:]

    # Setting the hyperparameters for Once Class SVM

    oneclass = svm.OneClassSVM(kernel='rbf', gamma=0.01, nu=0.2)

    print("Start training")

    oneclass.fit(training_set)

    fraud_pred = oneclass.predict(prediction_data)

    unique, counts = np.unique(fraud_pred, return_counts=True)
    print (np.asarray((unique, counts)).T)
    print(fraud_pred)
    fraud_pred[fraud_pred == 1] = 0
    fraud_pred[fraud_pred == -1] = 1
    print(fraud_pred)

if __name__ == '__main__':
    AP = argparse.ArgumentParser()
    AP.add_argument("--training_file", type=str, help="Location of training file")
    AP.add_argument("--points_to_analyze", type=int, default=96, help="Number of points for SVM to do anomaly detection on")

    parsed = AP.parse_args()

    main(   training_dir=parsed.training_file,
            num_detect=parsed.points_to_analyze)