#!/bin/bash

datadir="/mnt/c/Users/Anita/Documents/4thyear/labproject/repo/ml/data/data"
rundir="/mnt/c/Users/Anita/Documents/4thyear/labproject/repo/ml/models/model4"
datascriptdir="/mnt/c/Users/Anita/Documents/4thyear/labproject/repo/ml/dataHandeling"
mlpdir="/mnt/c/Users/Anita/Documents/4thyear/labproject/repo/ml/mlp"

mkdir $rundir

cp $mlpdir/MLP.py $rundir
cp $datascriptdir/format_data.py $rundir
cp $datascriptdir/get_data.py $rundir
cp $datascriptdir/parse_data.py $rundir
cp mlp.sh $rundir

cd $rundir

fileNum=-1
trainSplit=0.7
learningInit=0.001
epochs=50
batch=50

python3 MLP.py              --training_directory $datadir \
                            --checkpoint_directory $rundir \
                            --file_number $fileNum \
                            --train_percent $trainSplit \
                            --initial_learning $learningInit \
                            --epochs $epochs \
                            --batchsize $batch \

