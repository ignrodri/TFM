#!/bin/bash

export PATH=/home/ec2-user/bin/antsbin/bin:$PATH
export ANTSPATH=/home/ec2-user/bin/antsbin/bin
export ITK_GLOBAL_DEFAULT_NUMBER_OF_THREADS=1

buildtemplateparallel.sh -d 3 -o prev2444 -c 2 -j 16 -m 1x0x0 2444*T1masked.nii.gz
buildtemplateparallel.sh -d 3 -o post2444 -c 2 -j 16 -z prev2444template.nii.gz 2444*T1masked.nii.gz