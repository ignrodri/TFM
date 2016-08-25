#!/bin/bash

export PATH=/home/ec2-user/bin/antsbin/bin:$PATH
export ANTSPATH=/home/ec2-user/bin/antsbin/bin
export ITK_GLOBAL_DEFAULT_NUMBER_OF_THREADS=1

cd /home/ec2-user/TFM/images
antsRegistrationSyNQuick.sh -d 3 -f template2225.nii.gz -m 2225-X1-T1.nii.gz -o ignacio