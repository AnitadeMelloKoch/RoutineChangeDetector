#!/bin/bash

data_dir='/mnt/c/Users/Anita/Documents/4thyear/labproject/repo/ml/data/test'

meta_dir=/mnt/c/Users/Anita/Documents/4thyear/labproject/repo/ml/models/final900/final900/chkpnt/model-2000.meta

chk_dir=/mnt/c/Users/Anita/Documents/4thyear/labproject/repo/ml/models/final900/final900/chkpnt/model-2000

python3 inferenceMLP.py --data $data_dir\
                        --meta_directory $meta_dir\
                        --checkpoint_directory $chk_dir \
                        --validate True