#!/bin/bash

export PATH=/home/ec2-user/bin/antsbin/bin:$PATH
export ANTSPATH=/home/ec2-user/bin/antsbin/bin
export ITK_GLOBAL_DEFAULT_NUMBER_OF_THREADS=1

cd /home/ec2-user/xtfm/images
if [ ! -f 2225X1T10GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f template2225.nii.gz -m 2225-X1-T1masked.nii.gz -o 2225X1T1
fi
if [ ! -f 2225X1DTI0GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f 2225-X1-T1masked.nii.gz -m 2225-X1-DTIb0.nii.gz -o 2225X1DTI
fi
if [ ! -f 2225X2T10GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f template2225.nii.gz -m 2225-X2-T1masked.nii.gz -o 2225X2T1
fi
if [ ! -f 2225X2DTI0GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f 2225-X2-T1masked.nii.gz -m 2225-X2-DTIb0.nii.gz -o 2225X2DTI
fi
if [ ! -f 2225X3T10GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f template2225.nii.gz -m 2225-X3-T1masked.nii.gz -o 2225X3T1
fi
if [ ! -f 2225X3DTI0GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f 2225-X3-T1masked.nii.gz -m 2225-X3-DTIb0.nii.gz -o 2225X3DTI
fi
if [ ! -f 2225X4T10GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f template2225.nii.gz -m 2225-X4-T1masked.nii.gz -o 2225X4T1
fi
if [ ! -f 2225X4DTI0GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f 2225-X4-T1masked.nii.gz -m 2225-X4-DTIb0.nii.gz -o 2225X4DTI
fi
if [ ! -f 2225X5T10GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f template2225.nii.gz -m 2225-X5-T1masked.nii.gz -o 2225X5T1
fi
if [ ! -f 2225X5DTI0GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f 2225-X5-T1masked.nii.gz -m 2225-X5-DTIb0.nii.gz -o 2225X5DTI
fi
if [ ! -f 2225reg0GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f template.nii.gz -m template2225.nii.gz -o 2225reg
fi
if [ ! -f 2327X1T10GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f template2327.nii.gz -m 2327-X1-T1masked.nii.gz -o 2327X1T1
fi
if [ ! -f 2327X1DTI0GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f 2327-X1-T1masked.nii.gz -m 2327-X1-DTIb0.nii.gz -o 2327X1DTI
fi
if [ ! -f 2327X2T10GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f template2327.nii.gz -m 2327-X2-T1masked.nii.gz -o 2327X2T1
fi
if [ ! -f 2327X2DTI0GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f 2327-X2-T1masked.nii.gz -m 2327-X2-DTIb0.nii.gz -o 2327X2DTI
fi
if [ ! -f 2327X3T10GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f template2327.nii.gz -m 2327-X3-T1masked.nii.gz -o 2327X3T1
fi
if [ ! -f 2327X3DTI0GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f 2327-X3-T1masked.nii.gz -m 2327-X3-DTIb0.nii.gz -o 2327X3DTI
fi
if [ ! -f 2327X4T10GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f template2327.nii.gz -m 2327-X4-T1masked.nii.gz -o 2327X4T1
fi
if [ ! -f 2327X4DTI0GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f 2327-X4-T1masked.nii.gz -m 2327-X4-DTIb0.nii.gz -o 2327X4DTI
fi
if [ ! -f 2327X5T10GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f template2327.nii.gz -m 2327-X5-T1masked.nii.gz -o 2327X5T1
fi
if [ ! -f 2327X5DTI0GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f 2327-X5-T1masked.nii.gz -m 2327-X5-DTIb0.nii.gz -o 2327X5DTI
fi
if [ ! -f 2327reg0GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f template.nii.gz -m template2327.nii.gz -o 2327reg
fi
if [ ! -f 2444X1T10GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f template2444.nii.gz -m 2444-X1-T1masked.nii.gz -o 2444X1T1
fi
if [ ! -f 2444X1DTI0GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f 2444-X1-T1masked.nii.gz -m 2444-X1-DTIb0.nii.gz -o 2444X1DTI
fi
if [ ! -f 2444X2T10GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f template2444.nii.gz -m 2444-X2-T1masked.nii.gz -o 2444X2T1
fi
if [ ! -f 2444X2DTI0GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f 2444-X2-T1masked.nii.gz -m 2444-X2-DTIb0.nii.gz -o 2444X2DTI
fi
if [ ! -f 2444X3T10GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f template2444.nii.gz -m 2444-X3-T1masked.nii.gz -o 2444X3T1
fi
if [ ! -f 2444X3DTI0GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f 2444-X3-T1masked.nii.gz -m 2444-X3-DTIb0.nii.gz -o 2444X3DTI
fi
if [ ! -f 2444X4T10GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f template2444.nii.gz -m 2444-X4-T1masked.nii.gz -o 2444X4T1
fi
if [ ! -f 2444X4DTI0GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f 2444-X4-T1masked.nii.gz -m 2444-X4-DTIb0.nii.gz -o 2444X4DTI
fi
if [ ! -f 2444X5T10GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f template2444.nii.gz -m 2444-X5-T1masked.nii.gz -o 2444X5T1
fi
if [ ! -f 2444X5DTI0GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f 2444-X5-T1masked.nii.gz -m 2444-X5-DTIb0.nii.gz -o 2444X5DTI
fi
if [ ! -f 2444reg0GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f template.nii.gz -m template2444.nii.gz -o 2444reg
fi
if [ ! -f 2459X1T10GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f template2459.nii.gz -m 2459-X1-T1masked.nii.gz -o 2459X1T1
fi
if [ ! -f 2459X1DTI0GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f 2459-X1-T1masked.nii.gz -m 2459-X1-DTIb0.nii.gz -o 2459X1DTI
fi
if [ ! -f 2459X2T10GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f template2459.nii.gz -m 2459-X2-T1masked.nii.gz -o 2459X2T1
fi
if [ ! -f 2459X2DTI0GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f 2459-X2-T1masked.nii.gz -m 2459-X2-DTIb0.nii.gz -o 2459X2DTI
fi
if [ ! -f 2459X3T10GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f template2459.nii.gz -m 2459-X3-T1masked.nii.gz -o 2459X3T1
fi
if [ ! -f 2459X3DTI0GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f 2459-X3-T1masked.nii.gz -m 2459-X3-DTIb0.nii.gz -o 2459X3DTI
fi
if [ ! -f 2459X4T10GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f template2459.nii.gz -m 2459-X4-T1masked.nii.gz -o 2459X4T1
fi
if [ ! -f 2459X4DTI0GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f 2459-X4-T1masked.nii.gz -m 2459-X4-DTIb0.nii.gz -o 2459X4DTI
fi
if [ ! -f 2459X5T10GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f template2459.nii.gz -m 2459-X5-T1masked.nii.gz -o 2459X5T1
fi
if [ ! -f 2459X5DTI0GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f 2459-X5-T1masked.nii.gz -m 2459-X5-DTIb0.nii.gz -o 2459X5DTI
fi
if [ ! -f 2459reg0GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f template.nii.gz -m template2459.nii.gz -o 2459reg
fi
if [ ! -f 2502X1T10GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f template2502.nii.gz -m 2502-X1-T1masked.nii.gz -o 2502X1T1
fi
if [ ! -f 2502X1DTI0GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f 2502-X1-T1masked.nii.gz -m 2502-X1-DTIb0.nii.gz -o 2502X1DTI
fi
if [ ! -f 2502X2T10GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f template2502.nii.gz -m 2502-X2-T1masked.nii.gz -o 2502X2T1
fi
if [ ! -f 2502X2DTI0GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f 2502-X2-T1masked.nii.gz -m 2502-X2-DTIb0.nii.gz -o 2502X2DTI
fi
if [ ! -f 2502X3T10GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f template2502.nii.gz -m 2502-X3-T1masked.nii.gz -o 2502X3T1
fi
if [ ! -f 2502X3DTI0GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f 2502-X3-T1masked.nii.gz -m 2502-X3-DTIb0.nii.gz -o 2502X3DTI
fi
if [ ! -f 2502X4T10GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f template2502.nii.gz -m 2502-X4-T1masked.nii.gz -o 2502X4T1
fi
if [ ! -f 2502X4DTI0GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f 2502-X4-T1masked.nii.gz -m 2502-X4-DTIb0.nii.gz -o 2502X4DTI
fi
if [ ! -f 2502X5T10GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f template2502.nii.gz -m 2502-X5-T1masked.nii.gz -o 2502X5T1
fi
if [ ! -f 2502X5DTI0GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f 2502-X5-T1masked.nii.gz -m 2502-X5-DTIb0.nii.gz -o 2502X5DTI
fi
if [ ! -f 2502reg0GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f template.nii.gz -m template2502.nii.gz -o 2502reg
fi
if [ ! -f 2672X1T10GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f template2672.nii.gz -m 2672-X1-T1masked.nii.gz -o 2672X1T1
fi
if [ ! -f 2672X1DTI0GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f 2672-X1-T1masked.nii.gz -m 2672-X1-DTIb0.nii.gz -o 2672X1DTI
fi
if [ ! -f 2672X2T10GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f template2672.nii.gz -m 2672-X2-T1masked.nii.gz -o 2672X2T1
fi
if [ ! -f 2672X2DTI0GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f 2672-X2-T1masked.nii.gz -m 2672-X2-DTIb0.nii.gz -o 2672X2DTI
fi
if [ ! -f 2672X3T10GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f template2672.nii.gz -m 2672-X3-T1masked.nii.gz -o 2672X3T1
fi
if [ ! -f 2672X3DTI0GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f 2672-X3-T1masked.nii.gz -m 2672-X3-DTIb0.nii.gz -o 2672X3DTI
fi
if [ ! -f 2672X4T10GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f template2672.nii.gz -m 2672-X4-T1masked.nii.gz -o 2672X4T1
fi
if [ ! -f 2672X4DTI0GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f 2672-X4-T1masked.nii.gz -m 2672-X4-DTIb0.nii.gz -o 2672X4DTI
fi
if [ ! -f 2672X5T10GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f template2672.nii.gz -m 2672-X5-T1masked.nii.gz -o 2672X5T1
fi
if [ ! -f 2672X5DTI0GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f 2672-X5-T1masked.nii.gz -m 2672-X5-DTIb0.nii.gz -o 2672X5DTI
fi
if [ ! -f 2672reg0GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f template.nii.gz -m template2672.nii.gz -o 2672reg
fi
if [ ! -f avg0GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f Piglet_Averaged_Brain.nii.gz -m template.nii.gz -o avg
fi
