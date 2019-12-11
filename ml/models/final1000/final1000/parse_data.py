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

    #read binary label values and missing label indicators
    binaryLabels = allData[:,(numFeatures+1):-1]
    #should have values of 0, 1 or NaN
    M = np.isnan(binaryLabels)
    #all missing labels stored in M
    Y = np.where(M,0,binaryLabels) > 0.
    #Y is label matrix

    return (X,Y.astype(int),M.astype(int),timestamps)

#read user data from a specific uuid

def seperate_output_actions_1(labels, allOut):
    actionLabels = labels[:6]
    actionData = allOut[:,:6]
    actionLabels = actionLabels + labels[14:16]
    actionData = np.concatenate([actionData, allOut[:,14:16]], axis=1)
    actionLabels = actionLabels + labels[19:20]
    actionData = np.concatenate([actionData, allOut[:,19:20]], axis=1)
    actionLabels = actionLabels + labels[21:23]
    actionData = np.concatenate([actionData, allOut[:,21:23]], axis=1)
    actionLabels = actionLabels + labels[41:43]
    actionData = np.concatenate([actionData, allOut[:,41:43]], axis=1)
    actionLabels = actionLabels + labels[44:45]
    actionData = np.concatenate([actionData, allOut[:,44:45]], axis=1)

    return(actionLabels, actionData)

def seperate_output_actions_2(labels, allOut):
    actionLabels = labels[6:9]
    actionData = allOut[:,6:9]
    actionLabels = actionLabels + labels[20:21]
    actionData = np.concatenate([actionData, allOut[:,20:21]], axis=1)
    actionLabels = actionLabels + labels[23:30]
    actionData = np.concatenate([actionData, allOut[:,23:30]], axis=1)
    actionLabels = actionLabels + labels[33:40]
    actionData = np.concatenate([actionData, allOut[:,33:40]], axis=1)
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

def remove_watch_data(labels, allin):
    newLabels = labels[:83]
    newin = allin[:,:83]
    newLabels = newLabels + labels[138:]
    newin = np.concatenate([newin, allin[:,138:]], axis=1)
    return (newLabels, newin)