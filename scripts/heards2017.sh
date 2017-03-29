#!/bin/bash

export PATH=/home/ec2-user/bin/antsbin/bin:$PATH
export ANTSPATH=/home/ec2-user/bin/antsbin/bin
export ITK_GLOBAL_DEFAULT_NUMBER_OF_THREADS=1

cd /home/ec2-user/xtfm/images
if [ ! -f 2225-X1-DTI-0GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f 2225-X1-T1masked.nii.gz -m 2225-X1-DTIb0.nii.gz -o 2225-X1-DTI-
fi
if [ ! -f 2225-X1-DTIhp.nii.gz ]; then
	antsApplyTransforms -d 3 -i 2225-X1-T1hp.nii.gz -o 2225-X1-DTIhp.nii.gz -r 2225-X1-DTIb0.nii.gz -t [2225-X1-DTI-0GenericAffine.mat,1] -t 2225-X1-DTI-1InverseWarp.nii.gz
fi
if [ ! -f 2225-X4-DTI-0GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f 2225-X4-T1masked.nii.gz -m 2225-X4-DTIb0.nii.gz -o 2225-X4-DTI-
fi
if [ ! -f 2225-X4-DTIhp.nii.gz ]; then
	antsApplyTransforms -d 3 -i 2225-X4-T1hp.nii.gz -o 2225-X4-DTIhp.nii.gz -r 2225-X4-DTIb0.nii.gz -t [2225-X4-DTI-0GenericAffine.mat,1] -t 2225-X4-DTI-1InverseWarp.nii.gz
fi
if [ ! -f 2327-X1-DTI-0GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f 2327-X1-T1masked.nii.gz -m 2327-X1-DTIb0.nii.gz -o 2327-X1-DTI-
fi
if [ ! -f 2327-X1-DTIhp.nii.gz ]; then
	antsApplyTransforms -d 3 -i 2327-X1-T1hp.nii.gz -o 2327-X1-DTIhp.nii.gz -r 2327-X1-DTIb0.nii.gz -t [2327-X1-DTI-0GenericAffine.mat,1] -t 2327-X1-DTI-1InverseWarp.nii.gz
fi
