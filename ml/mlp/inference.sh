#!/bin/bash

data_dir=/mnt/c/Users/Anita/Documents/4thyear/labproject/repo/ml/data/data

meta_dir=/mnt/c/Users/Anita/Documents/4thyear/labproject/repo/ml/models/models500epochextraLayer/chkpnt/model-1000.meta

chk_dir=/mnt/c/Users/Anita/Documents/4thyear/labproject/repo/ml/models/models500epochextraLayer/chkpnt

python3 inferenceMLP.py --data_directory $data_dir\
                        --meta_directory $meta_dir\
                        --checkpoint_directory $chk_dir \
                        --validate True