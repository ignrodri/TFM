#!/bin/bash

export PATH=/home/ec2-user/bin/antsbin/bin:$PATH
export ANTSPATH=/home/ec2-user/bin/antsbin/bin
export ITK_GLOBAL_DEFAULT_NUMBER_OF_THREADS=1

cd /home/ec2-user/xtfm/images
buildtemplateparallel.sh -d 3 -o prev2672 -c 2 -j 16 -m 1x0x0 2672*T1masked.nii.gz
buildtemplateparallel.sh -d 3 -o post2672 -c 2 -j 16 -z prev2672template.nii.gz 2672*T1masked.nii.gz
mv post2672template.nii.gz template2672.nii.gz