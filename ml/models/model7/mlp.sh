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
epochs=50

# batch size for each training step
batch=50

# Number of feature discovered by each hidden layer
hidden_1=255
hidden_2=255
hidden_3=255
hidden_4=255
hidden_5=255

action_1=100


action_weight=0.67
loc_weight=0.255
phone_weight=0.08
# =================================================================================================================

# Directories

datadir="/mnt/c/Users/Anita/Documents/4thyear/labproject/repo/ml/data/data"
rundir="/mnt/c/Users/Anita/Documents/4thyear/labproject/repo/ml/models/model7"
datascriptdir="/mnt/c/Users/Anita/Documents/4thyear/labproject/repo/ml/dataHandeling"
mlpdir="/mnt/c/Users/Anita/Documents/4thyear/labproject/repo/ml/mlp"

# =================================================================================================================

# Run training

mkdir -p $rundir

cp $mlpdir/MLP.py $rundir
cp $datascriptdir/format_data.py $rundir
cp $datascriptdir/get_data.py $rundir
cp $datascriptdir/parse_data.py $rundir
cp mlp.sh $rundir

cd $rundir



python3 MLP.py  --training_directory $datadir \
                --checkpoint_directory $rundir/chkpnt/model \
                --file_number $fileNum \
                --train_percent $trainSplit \
                --initial_learning $learningInit \
                --epochs $epochs \
                --batchsize $batch \
                --action_weighting $action_weight \
                --loc_weighting $loc_weight \
                --phone_weighting $phone_weight \
                --hidden_1 $hidden_1 \
                --hidden_2 $hidden_2 \
                --hidden_3 $hidden_3 \
                --hidden_4 $hidden_4 \
                --hidden_5 $hidden_5 \
                --action_1 $action_1

