#!/bin/bash

# Parameters to change

# Number of files to use from the directory. -1 uses all files
fileNum=-1

# Percentage of data to be used for training. Rest is used for validation
trainSplit=0.7


learningInit=0.001
epochs=50
batch=50
hidden_1=255
hidden_2=255
hidden_3=255
hidden_4=255
hidden_5=255

datadir="/mnt/c/Users/Anita/Documents/4thyear/labproject/repo/ml/data/data"
rundir="/mnt/c/Users/Anita/Documents/4thyear/labproject/repo/ml/models/model5"
datascriptdir="/mnt/c/Users/Anita/Documents/4thyear/labproject/repo/ml/dataHandeling"
mlpdir="/mnt/c/Users/Anita/Documents/4thyear/labproject/repo/ml/mlp"

mkdir $rundir

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
                --hidden_1 $hidden_1 \
                --hidden_2 $hidden_2 \
                --hidden_3 $hidden_3 \
                --hidden_4 $hidden_4 \
                --hidden_5 $hidden_5 

