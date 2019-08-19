#!/bin/bash

# Parameters to change
# ===============================================================================================================
# Number of files to use from the directory. -1 uses all files
fileNum=-1

# Percentage of data to be used for training. Rest is used for validation
trainSplit=0.7

# Initial learning ate. The learning rate drops off as an exponential function
learningInit=0.001

# Number of epochs to train for
epochs=800

# batch size for each training step
batch=200

# Number of feature discovered by each hidden layer
hidden_1=210
hidden_2=205
hidden_3=190
hidden_4=170
hidden_5=150
hidden_6=130
hidden_7=90
hidden_8=70

action_1_layer_1=50
action_2_layer_1=50
action_2_layer_2=30

action_weight_1=0.47
action_weight_2=0.24
loc_weight=0.26
phone_weight=0.08
# =================================================================================================================

# Directories

datadir="/mnt/c/Users/Anita/Documents/4thyear/labproject/repo/ml/data/data"
rundir="/mnt/c/Users/Anita/Documents/4thyear/labproject/repo/ml/models/8hidden800epoch"
datascriptdir="/mnt/c/Users/Anita/Documents/4thyear/labproject/repo/ml/dataHandeling"
mlpdir="/mnt/c/Users/Anita/Documents/4thyear/labproject/repo/ml/mlp"

# =================================================================================================================

# Run training

# if [ -d $rundir ]; then
#   read -p "Directory already exists. Do you wish to continue? [y,n]" conti
#   if [$conti == "n"]; then
#     exit
#   fi
# fi

# mkdir -p $rundir

# cp $mlpdir/MLP.py $rundir
cp $datascriptdir/format_data.py $rundir
cp $datascriptdir/get_data.py $rundir
cp $datascriptdir/parse_data.py $rundir
# cp mlp.sh $rundir

# cd $rundir



python3 MLP.py  --training_directory $datadir \
                --checkpoint_directory $rundir/chkpnt/model \
                --file_number $fileNum \
                --train_percent $trainSplit \
                --initial_learning $learningInit \
                --epochs $epochs \
                --batchsize $batch \
                --action_weighting_1 $action_weight_1 \
                --action_weighting_2 $action_weight_2 \
                --loc_weighting $loc_weight \
                --phone_weighting $phone_weight \
                --hidden_1 $hidden_1 \
                --hidden_2 $hidden_2 \
                --hidden_3 $hidden_3 \
                --hidden_4 $hidden_4 \
                --hidden_5 $hidden_5 \
                --hidden_6 $hidden_6 \
                --hidden_7 $hidden_7 \
                --action_1_layer_1 $action_1_layer_1 \
                --action_2_layer_1 $action_2_layer_1 \
                --action_2_layer_2 $action_2_layer_2
