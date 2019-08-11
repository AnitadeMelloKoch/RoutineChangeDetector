import glob
import os
import parse_data
import format_data
import numpy as np

def get_all_data(dir, num_files):
    all_files = glob.glob(dir + "/*.csv")
    all_data_X = []
    all_data_Y = []
    all_data_M = []
    numFeatures = 0
    if num_files == -1:
        num_files = len(all_files)
    for csv_file in all_files[:num_files]:
        print("Reading from file: " + csv_file)
        f = open(os.path.abspath(csv_file), 'r')
        csv_str = f.read()
        if csv_file == all_files[0]:
            (featureNames, labelNames) = parse_data.parse_header_of_csv(csv_str)
            numFeatures = len(featureNames)
            (all_data_X, all_data_Y, all_data_M, timestamps) = parse_data.parse_body_of_csv(csv_str, numFeatures)
        else:
            (X,Y,M,timestamps) = parse_data.parse_body_of_csv(csv_str, numFeatures)
            all_data_X = np.concatenate([all_data_X, X])
            all_data_M = np.concatenate([all_data_M, M])
            all_data_Y = np.concatenate([all_data_Y, Y])

    return (all_data_X, all_data_Y, all_data_M, labelNames)

def get_formatted_data(dir, num_files):
    (all_X, all_Y, all_M, labels) = get_all_data(dir, num_files)

    all_X = format_data.standardize_features(all_X)
    (action_data_1) = parse_data.seperate_output_actions_1(labels, all_Y)
    (action_data_2) = parse_data.seperate_output_actions_2(labels, all_Y)
    (loc_data) = parse_data.seperate_output_loc(labels, all_Y)
    (phone_data) = parse_data.seperate_output_phone(labels, all_Y)
    input_all = np.concatenate([all_X, all_M], axis=1)

    return (input_all, action_data_1, action_data_2, loc_data, phone_data)


