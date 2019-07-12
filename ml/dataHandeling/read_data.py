import numpy as np
import io
import csv

def parse_header_of_csv(inputString):
    #get headings from csv data
    print(type(inputString))
    header = inputString[:inputString.index('\n')]
    columns = header.split(',')

    #get time stamp from first heading
    assert columns[0] == 'timestamp'
    #get labelSource from last heading
    assert columns[-1] == 'label_source'

    #find first label index
    for (index, col) in enumerate(columns):
        if col.startswith('label:'):
            firstLabel = index
            break
        pass

    featureNames = columns[1:firstLabel]
    labelNames = columns[firstLabel:-1]

    #remove 'label:' from the begining of all labels
    for (index, label) in enumerate(labelNames):
        assert label.startswith('label:')
        labelNames[index] = label.replace('label:','')
        pass

    return(featureNames, labelNames)

def parse_body_of_csv(csvString, numFeatures):
    allData = np.loadtxt(io.StringIO(csvString), delimiter=',', skiprows=1)

    #primary key = timestamps
    timestamps = allData[:,0].astype(int)

    #read sensor features
    X = allData[:,1:(numFeatures+1)]

    #read binary label values and missing label indicators
    binaryLabels = allData[:,(numFeatures+1):-1]
    #should have values of 0, 1 or NaN
    M = np.isnan(binaryLabels)
    #all missing labels stored in M
    Y = np.where(M,0,binaryLabels) > 0.
    #Y is label matrix

    return (X,Y,M,timestamps)

#read user data from a specific uuid

def read_user_data(uuid):
    userFile = '%s.features_labels.csv' % uuid

    f = open(userFile, 'r')
    csv_str = f.read()

    (featureNames, labelNames) = parse_header_of_csv(csv_str)
    numFeatures = len(featureNames)
    (X,Y,M,timestamps) = parse_body_of_csv(csv_str, numFeatures)

    return (X, Y, M, timestamps, featureNames, labelNames)

uuid = '00EABED2-271D-49D8-B599-1D4A09240601'
(X,Y,M,timestamps,feature_names,label_names) = read_user_data(uuid)

print(X)
print(Y)
print(M)
print(timestamps)
print(feature_names)
print(label_names)