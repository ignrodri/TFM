#!/bin/bash

export PATH=/home/ec2-user/bin/antsbin/bin:$PATH
export ANTSPATH=/home/ec2-user/bin/antsbin/bin
export ITK_GLOBAL_DEFAULT_NUMBER_OF_THREADS=1

cd /home/ec2-user/xtfm/images
buildtemplateparallel.sh -d 3 -o prev -c 2 -j 16 -m 1x0x0 template*.nii.gz
buildtemplateparallel.sh -d 3 -o post -c 2 -j 16 -z prevtemplate.nii.gz template*.nii.gz
mv posttemplate.nii.gz template.nii.gz