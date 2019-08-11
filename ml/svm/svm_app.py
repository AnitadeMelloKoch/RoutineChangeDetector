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

    # Data check. 

    #I observed an conflict in the name 'class'. Therefore, I have changed the name from class to category
    # For convinience, divide the dataframe cc based on two labels. 

    nor_obs = cc.loc[cc.anomalie ==0]    #Data frame with normal observation
    ano_obs = cc.loc[cc.anomalie==1]    #Data frame with anomalous observation
    # The given dataframe 'cc' is divided into three sets 
    # Training set: train_features
    # Test observations/features: X_test
    # Test labels: Y_test
    # Once class SVM is trained with the observations of only one class. In this case, the algorithm is trained with 
    # first 200,000 observation of normal transactions. The remaining observation is merged with the anomalous observation 
    # to create a test set. 

    train_feature = nor_obs.loc[:-num_detect, :]
    train_feature = train_feature.drop('anomalie', 1)
    Y_1 = nor_obs.loc[num_detect:, 'anomalie']
    Y_2 = ano_obs['anomalie']

    # Creatng test observations/features

    X_test_1 = nor_obs.loc[num_detect:, :].drop('anomalie', 1)
    X_test_2 = ano_obs.drop('anomalie',1)
    X_test = X_test_1.append(X_test_2)

    # Setting the hyperparameters for Once Class SVM

    oneclass = svm.OneClassSVM(kernel='rbf', gamma=0.01, nu=0.2)

    # I have used various combination of hyperparameters like linear, rbf, poly, gamma- 0.001, 0.0001, nu- 0.25, 0.5, 0.75, 0.95
    # This combination gave me the most satisfactory results.# The remain data set is (after 200,000 observations) are appended with anomalous observations

    Y_1 = nor_obs.loc[num_detect:, 'anomalie']
    Y_2 = ano_obs['anomalie']

    # Y_test is used to evaluste the model

    # Training the algorithm with the features. 
    # This stage is very time consuming processes. In my laptop it took more than an hour to train for 200,000 observations. 
    # For rbf, the time taken is even more.

    print("Start training")

    oneclass.fit(train_feature)
    # Test the algorithm on the test set

    fraud_pred = oneclass.predict(X_test)
    # Check the number of outliers predicted by the algorithm

    unique, counts = np.unique(fraud_pred, return_counts=True)
    print (np.asarray((unique, counts)).T)

if __name__ == '__main__':
    AP = argparse.ArgumentParser()
    AP.add_argument("--training_file", type=str, help="Location of training file")
    AP.add_argument("--points_to_analyze", type=int, default=96, help="Number of points for SVM to do anomaly detection on")

    parsed = AP.parse_args()

    main(   training_dir=parsed.training_file,
            num_detect=parsed.points_to_analyze)