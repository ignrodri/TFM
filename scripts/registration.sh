#!/bin/bash

export PATH=/home/ec2-user/bin/antsbin/bin:$PATH
export ANTSPATH=/home/ec2-user/bin/antsbin/bin
export ITK_GLOBAL_DEFAULT_NUMBER_OF_THREADS=1

cd /home/ec2-user/TFM/images
antsRegistrationSyNQuick.sh -d 3 -f template2225.nii.gz -m 2225-X1-T1masked.nii.gz -o 2225X1T1
antsRegistrationSyNQuick.sh -d 3 -f template2225.nii.gz -m 2225-X1-DTI.nii.gz -o 2225X1DTI
antsRegistrationSyNQuick.sh -d 3 -f template2225.nii.gz -m 2225-X2-T1masked.nii.gz -o 2225X2T1
antsRegistrationSyNQuick.sh -d 3 -f template2225.nii.gz -m 2225-X2-DTI.nii.gz -o 2225X2DTI
antsRegistrationSyNQuick.sh -d 3 -f template2225.nii.gz -m 2225-X3-T1masked.nii.gz -o 2225X3T1
antsRegistrationSyNQuick.sh -d 3 -f template2225.nii.gz -m 2225-X3-DTI.nii.gz -o 2225X3DTI
antsRegistrationSyNQuick.sh -d 3 -f template2225.nii.gz -m 2225-X4-T1masked.nii.gz -o 2225X4T1
antsRegistrationSyNQuick.sh -d 3 -f template2225.nii.gz -m 2225-X4-DTI.nii.gz -o 2225X4DTI
antsRegistrationSyNQuick.sh -d 3 -f template2225.nii.gz -m 2225-X5-T1masked.nii.gz -o 2225X5T1
antsRegistrationSyNQuick.sh -d 3 -f template2225.nii.gz -m 2225-X5-DTI.nii.gz -o 2225X5DTI
antsRegistrationSyNQuick.sh -d 3 -f template.nii.gz -m template2225.nii.gz -o 2225reg
antsRegistrationSyNQuick.sh -d 3 -f template2327.nii.gz -m 2327-X1-T1masked.nii.gz -o 2327X1T1
antsRegistrationSyNQuick.sh -d 3 -f template2327.nii.gz -m 2327-X1-DTI.nii.gz -o 2327X1DTI
antsRegistrationSyNQuick.sh -d 3 -f template2327.nii.gz -m 2327-X2-T1masked.nii.gz -o 2327X2T1
antsRegistrationSyNQuick.sh -d 3 -f template2327.nii.gz -m 2327-X2-DTI.nii.gz -o 2327X2DTI
antsRegistrationSyNQuick.sh -d 3 -f template2327.nii.gz -m 2327-X3-T1masked.nii.gz -o 2327X3T1
antsRegistrationSyNQuick.sh -d 3 -f template2327.nii.gz -m 2327-X3-DTI.nii.gz -o 2327X3DTI
antsRegistrationSyNQuick.sh -d 3 -f template2327.nii.gz -m 2327-X4-T1masked.nii.gz -o 2327X4T1
antsRegistrationSyNQuick.sh -d 3 -f template2327.nii.gz -m 2327-X4-DTI.nii.gz -o 2327X4DTI
antsRegistrationSyNQuick.sh -d 3 -f template2327.nii.gz -m 2327-X5-T1masked.nii.gz -o 2327X5T1
antsRegistrationSyNQuick.sh -d 3 -f template2327.nii.gz -m 2327-X5-DTI.nii.gz -o 2327X5DTI
antsRegistrationSyNQuick.sh -d 3 -f template.nii.gz -m template2327.nii.gz -o 2327reg
antsRegistrationSyNQuick.sh -d 3 -f template2444.nii.gz -m 2444-X1-T1masked.nii.gz -o 2444X1T1
antsRegistrationSyNQuick.sh -d 3 -f template2444.nii.gz -m 2444-X1-DTI.nii.gz -o 2444X1DTI
antsRegistrationSyNQuick.sh -d 3 -f template2444.nii.gz -m 2444-X2-T1masked.nii.gz -o 2444X2T1
antsRegistrationSyNQuick.sh -d 3 -f template2444.nii.gz -m 2444-X2-DTI.nii.gz -o 2444X2DTI
antsRegistrationSyNQuick.sh -d 3 -f template2444.nii.gz -m 2444-X3-T1masked.nii.gz -o 2444X3T1
antsRegistrationSyNQuick.sh -d 3 -f template2444.nii.gz -m 2444-X3-DTI.nii.gz -o 2444X3DTI
antsRegistrationSyNQuick.sh -d 3 -f template2444.nii.gz -m 2444-X4-T1masked.nii.gz -o 2444X4T1
antsRegistrationSyNQuick.sh -d 3 -f template2444.nii.gz -m 2444-X4-DTI.nii.gz -o 2444X4DTI
antsRegistrationSyNQuick.sh -d 3 -f template2444.nii.gz -m 2444-X5-T1masked.nii.gz -o 2444X5T1
antsRegistrationSyNQuick.sh -d 3 -f template2444.nii.gz -m 2444-X5-DTI.nii.gz -o 2444X5DTI
antsRegistrationSyNQuick.sh -d 3 -f template.nii.gz -m template2444.nii.gz -o 2444reg
antsRegistrationSyNQuick.sh -d 3 -f template2459.nii.gz -m 2459-X1-T1masked.nii.gz -o 2459X1T1
antsRegistrationSyNQuick.sh -d 3 -f template2459.nii.gz -m 2459-X1-DTI.nii.gz -o 2459X1DTI
antsRegistrationSyNQuick.sh -d 3 -f template2459.nii.gz -m 2459-X2-T1masked.nii.gz -o 2459X2T1
antsRegistrationSyNQuick.sh -d 3 -f template2459.nii.gz -m 2459-X2-DTI.nii.gz -o 2459X2DTI
antsRegistrationSyNQuick.sh -d 3 -f template2459.nii.gz -m 2459-X3-T1masked.nii.gz -o 2459X3T1
antsRegistrationSyNQuick.sh -d 3 -f template2459.nii.gz -m 2459-X3-DTI.nii.gz -o 2459X3DTI
antsRegistrationSyNQuick.sh -d 3 -f template2459.nii.gz -m 2459-X4-T1masked.nii.gz -o 2459X4T1
antsRegistrationSyNQuick.sh -d 3 -f template2459.nii.gz -m 2459-X4-DTI.nii.gz -o 2459X4DTI
antsRegistrationSyNQuick.sh -d 3 -f template2459.nii.gz -m 2459-X5-T1masked.nii.gz -o 2459X5T1
antsRegistrationSyNQuick.sh -d 3 -f template2459.nii.gz -m 2459-X5-DTI.nii.gz -o 2459X5DTI
antsRegistrationSyNQuick.sh -d 3 -f template.nii.gz -m template2459.nii.gz -o 2459reg
antsRegistrationSyNQuick.sh -d 3 -f template2502.nii.gz -m 2502-X1-T1masked.nii.gz -o 2502X1T1
antsRegistrationSyNQuick.sh -d 3 -f template2502.nii.gz -m 2502-X1-DTI.nii.gz -o 2502X1DTI
antsRegistrationSyNQuick.sh -d 3 -f template2502.nii.gz -m 2502-X2-T1masked.nii.gz -o 2502X2T1
antsRegistrationSyNQuick.sh -d 3 -f template2502.nii.gz -m 2502-X2-DTI.nii.gz -o 2502X2DTI
antsRegistrationSyNQuick.sh -d 3 -f template2502.nii.gz -m 2502-X3-T1masked.nii.gz -o 2502X3T1
antsRegistrationSyNQuick.sh -d 3 -f template2502.nii.gz -m 2502-X3-DTI.nii.gz -o 2502X3DTI
antsRegistrationSyNQuick.sh -d 3 -f template2502.nii.gz -m 2502-X4-T1masked.nii.gz -o 2502X4T1
antsRegistrationSyNQuick.sh -d 3 -f template2502.nii.gz -m 2502-X4-DTI.nii.gz -o 2502X4DTI
antsRegistrationSyNQuick.sh -d 3 -f template2502.nii.gz -m 2502-X5-T1masked.nii.gz -o 2502X5T1
antsRegistrationSyNQuick.sh -d 3 -f template2502.nii.gz -m 2502-X5-DTI.nii.gz -o 2502X5DTI
antsRegistrationSyNQuick.sh -d 3 -f template.nii.gz -m template2502.nii.gz -o 2502reg
antsRegistrationSyNQuick.sh -d 3 -f template2672.nii.gz -m 2672-X1-T1masked.nii.gz -o 2672X1T1
antsRegistrationSyNQuick.sh -d 3 -f template2672.nii.gz -m 2672-X1-DTI.nii.gz -o 2672X1DTI
antsRegistrationSyNQuick.sh -d 3 -f template2672.nii.gz -m 2672-X2-T1masked.nii.gz -o 2672X2T1
antsRegistrationSyNQuick.sh -d 3 -f template2672.nii.gz -m 2672-X2-DTI.nii.gz -o 2672X2DTI
antsRegistrationSyNQuick.sh -d 3 -f template2672.nii.gz -m 2672-X3-T1masked.nii.gz -o 2672X3T1
antsRegistrationSyNQuick.sh -d 3 -f template2672.nii.gz -m 2672-X3-DTI.nii.gz -o 2672X3DTI
antsRegistrationSyNQuick.sh -d 3 -f template2672.nii.gz -m 2672-X4-T1masked.nii.gz -o 2672X4T1
antsRegistrationSyNQuick.sh -d 3 -f template2672.nii.gz -m 2672-X4-DTI.nii.gz -o 2672X4DTI
antsRegistrationSyNQuick.sh -d 3 -f template2672.nii.gz -m 2672-X5-T1masked.nii.gz -o 2672X5T1
antsRegistrationSyNQuick.sh -d 3 -f template2672.nii.gz -m 2672-X5-DTI.nii.gz -o 2672X5DTI
antsRegistrationSyNQuick.sh -d 3 -f template.nii.gz -m template2672.nii.gz -o 2672reg
