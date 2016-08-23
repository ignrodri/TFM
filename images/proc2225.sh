#!/bin/bash

export PATH=/home/ec2-user/bin/antsbin/bin:$PATH
export ANTSPATH=/home/ec2-user/bin/antsbin/bin
export ITK_GLOBAL_DEFAULT_NUMBER_OF_THREADS=1

buildtemplateparallel.sh -d 3 -o prev2225 -c 2 -j 4 -m 1x0x0 2225*T1masked.nii.gz
buildtemplateparallel.sh -d 3 -o post2225 -c 2 -j 4 -z prev2225template.nii.gz 2225*T1masked.nii.gz