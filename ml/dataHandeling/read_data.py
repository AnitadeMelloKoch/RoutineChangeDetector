import numpy as np
import io
import csv
import os

def parse_header_of_csv(inputString):
    #get headings from csv data
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
    nan_data = np.isnan(X)
    X[nan_data] = 0

    #read binary label values and missing label indicators
    binaryLabels = allData[:,(numFeatures+1):-1]
    #should have values of 0, 1 or NaN
    M = np.isnan(binaryLabels)
    #all missing labels stored in M
    Y = np.where(M,0,binaryLabels) > 0.
    #Y is label matrix

    return (X,Y.astype(int),M.astype(int),timestamps)

#read user data from a specific uuid

def seperate_output_actions(labels, allOut):
    actionLabels = labels[:9]
    actionData = allOut[:,:9]
    actionLabels = actionLabels + labels[14:16]
    actionData = np.concatenate([actionData, allOut[:,14:16]], axis=1)
    actionLabels = actionLabels + labels[19:30]
    actionData = np.concatenate([actionData, allOut[:,19:30]], axis=1)
    actionLabels = actionLabels + labels[33:40]
    actionData = np.concatenate([actionData, allOut[:,33:40]], axis=1)
    actionLabels = actionLabels + labels[41:43]
    actionData = np.concatenate([actionData, allOut[:,41:43]], axis=1)
    actionLabels.append(labels[44])
    actionData = np.concatenate([actionData, allOut[:,[44]]], axis=1)
    actionLabels = actionLabels + labels[49:]
    actionData = np.concatenate([actionData, allOut[:,49:51]], axis=1)

    return(actionLabels, actionData)

def seperate_output_loc(labels, allOut):
    locLabels = labels[9:14]
    locData = allOut[:,9:14]
    locLabels = locLabels + labels[16:18]
    locData = np.concatenate([locData, allOut[:,16:18]], axis=1)
    locLabels = locLabels + labels[30:33]
    locData = np.concatenate([locData, allOut[:,30:33]], axis=1)
    locLabels.append(labels[40])
    locData = np.concatenate([locData, allOut[:,[40]]], axis=1)
    locLabels.append(labels[43])
    locData = np.concatenate([locData, allOut[:,[43]]], axis=1)
    locLabels.append(labels[45])
    locData = np.concatenate([locData, allOut[:,[45]]], axis=1)

    return (locLabels, locData)

def seperate_output_phone(labels, allOut):
    phoneLabels = [labels[18]]
    phoneData = allOut[:, [18]]
    phoneLabels = phoneLabels + labels[46:49]
    phoneData = np.concatenate([phoneData, allOut[:,46:49]],axis=1)

    return (phoneLabels, phoneData)

def read_user_data(filePath):

    f = open(os.path.abspath(filePath), 'r')
    csv_str = f.read()

    (featureNames, labelNames) = parse_header_of_csv(csv_str)
    numFeatures = len(featureNames)
    (X,Y,M,timestamps) = parse_body_of_csv(csv_str, numFeatures)

    return (X, Y, M, timestamps, featureNames, labelNames)

uuid = '00EABED2-271D-49D8-B599-1D4A09240601.features_labels.csv'
(X,Y,M,timestamps,feature_names,label_names) = read_user_data(uuid)
(actionLabels, actionData) = seperate_output_actions(label_names, Y)
(locLabels, locData) = seperate_output_loc(label_names, Y)
(phoneLabels, phoneData) = seperate_output_phone(label_names, Y)

print(phoneLabels)
print(phoneData)
print(len(phoneLabels))
print(phoneData.shape)

print(locData)
print(locLabels)
print(len(locLabels))
print(locData.shape)

print(actionData)
print(actionLabels)
print(len(actionLabels))
print(actionData.shape)
print(Y.shape)


# print(X)
# print(" ")
# print(Y)
# print(" ")
# print(M)
# print(" ")
# print(timestamps)
# print(" ")
# print(feature_names)
# print(" ")
# print(label_names)
# print(" ")
# print("dimensions of X")
# print(X.shape)
# print(Y.shape)
# print(M.shape)
# print("two together")
# print(np.concatenate([X,M],axis=1).shape)
# print(len(X))
#print(X[1])