#!/bin/bash

export PATH=/home/ec2-user/bin/antsbin/bin:$PATH
export ANTSPATH=/home/ec2-user/bin/antsbin/bin
export ITK_GLOBAL_DEFAULT_NUMBER_OF_THREADS=1

cd /home/ec2-user/xtfm/images
if [ ! -f avg0GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f Piglet_Averaged_Brain.nii.gz -m template.nii.gz -o avg
fi
if [ ! -f 2225reg0GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f template.nii.gz -m template2225.nii.gz -o 2225reg
fi
if [ ! -f 2225-X1-T1-0GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f template2225.nii.gz -m 2225-X1-T1masked.nii.gz -o 2225-X1-T1-
fi
if [ ! -f 2225-X1-DTI-0GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f 2225-X1-T1masked.nii.gz -m 2225-X1-DTIb0.nii.gz -o 2225-X1-DTI-
fi
if [ ! -f 2225-X1-gray.nii.gz ]; then
	antsApplyTransforms -d 3 -i smooth_1mm_gray.nii.gz -o 2225-X1-gray.nii.gz -r 2225-X1-DTIb0.nii.gz -t [2225-X1-DTI-0GenericAffine.mat,1] -t 2225-X1-DTI-1InverseWarp.nii.gz -t [2225-X1-T1-0GenericAffine.mat,1] -t 2225-X1-T1-1InverseWarp.nii.gz -t [2225reg0GenericAffine.mat,1] -t 2225reg1InverseWarp.nii.gz -t [avg0GenericAffine.mat,1] -t avg1InverseWarp.nii.gz
fi
if [ ! -f 2225-X1-white.nii.gz ]; then
	antsApplyTransforms -d 3 -i smooth_1mm_white.nii.gz -o 2225-X1-white.nii.gz -r 2225-X1-DTIb0.nii.gz -t [2225-X1-DTI-0GenericAffine.mat,1] -t 2225-X1-DTI-1InverseWarp.nii.gz -t [2225-X1-T1-0GenericAffine.mat,1] -t 2225-X1-T1-1InverseWarp.nii.gz -t [2225reg0GenericAffine.mat,1] -t 2225reg1InverseWarp.nii.gz -t [avg0GenericAffine.mat,1] -t avg1InverseWarp.nii.gz
fi
if [ ! -f 2225-X2-T1-0GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f template2225.nii.gz -m 2225-X2-T1masked.nii.gz -o 2225-X2-T1-
fi
if [ ! -f 2225-X2-DTI-0GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f 2225-X2-T1masked.nii.gz -m 2225-X2-DTIb0.nii.gz -o 2225-X2-DTI-
fi
if [ ! -f 2225-X2-gray.nii.gz ]; then
	antsApplyTransforms -d 3 -i smooth_1mm_gray.nii.gz -o 2225-X2-gray.nii.gz -r 2225-X2-DTIb0.nii.gz -t [2225-X2-DTI-0GenericAffine.mat,1] -t 2225-X2-DTI-1InverseWarp.nii.gz -t [2225-X2-T1-0GenericAffine.mat,1] -t 2225-X2-T1-1InverseWarp.nii.gz -t [2225reg0GenericAffine.mat,1] -t 2225reg1InverseWarp.nii.gz -t [avg0GenericAffine.mat,1] -t avg1InverseWarp.nii.gz
fi
if [ ! -f 2225-X2-white.nii.gz ]; then
	antsApplyTransforms -d 3 -i smooth_1mm_white.nii.gz -o 2225-X2-white.nii.gz -r 2225-X2-DTIb0.nii.gz -t [2225-X2-DTI-0GenericAffine.mat,1] -t 2225-X2-DTI-1InverseWarp.nii.gz -t [2225-X2-T1-0GenericAffine.mat,1] -t 2225-X2-T1-1InverseWarp.nii.gz -t [2225reg0GenericAffine.mat,1] -t 2225reg1InverseWarp.nii.gz -t [avg0GenericAffine.mat,1] -t avg1InverseWarp.nii.gz
fi
if [ ! -f 2225-X3-T1-0GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f template2225.nii.gz -m 2225-X3-T1masked.nii.gz -o 2225-X3-T1-
fi
if [ ! -f 2225-X3-DTI-0GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f 2225-X3-T1masked.nii.gz -m 2225-X3-DTIb0.nii.gz -o 2225-X3-DTI-
fi
if [ ! -f 2225-X3-gray.nii.gz ]; then
	antsApplyTransforms -d 3 -i smooth_1mm_gray.nii.gz -o 2225-X3-gray.nii.gz -r 2225-X3-DTIb0.nii.gz -t [2225-X3-DTI-0GenericAffine.mat,1] -t 2225-X3-DTI-1InverseWarp.nii.gz -t [2225-X3-T1-0GenericAffine.mat,1] -t 2225-X3-T1-1InverseWarp.nii.gz -t [2225reg0GenericAffine.mat,1] -t 2225reg1InverseWarp.nii.gz -t [avg0GenericAffine.mat,1] -t avg1InverseWarp.nii.gz
fi
if [ ! -f 2225-X3-white.nii.gz ]; then
	antsApplyTransforms -d 3 -i smooth_1mm_white.nii.gz -o 2225-X3-white.nii.gz -r 2225-X3-DTIb0.nii.gz -t [2225-X3-DTI-0GenericAffine.mat,1] -t 2225-X3-DTI-1InverseWarp.nii.gz -t [2225-X3-T1-0GenericAffine.mat,1] -t 2225-X3-T1-1InverseWarp.nii.gz -t [2225reg0GenericAffine.mat,1] -t 2225reg1InverseWarp.nii.gz -t [avg0GenericAffine.mat,1] -t avg1InverseWarp.nii.gz
fi
if [ ! -f 2225-X4-T1-0GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f template2225.nii.gz -m 2225-X4-T1masked.nii.gz -o 2225-X4-T1-
fi
if [ ! -f 2225-X4-DTI-0GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f 2225-X4-T1masked.nii.gz -m 2225-X4-DTIb0.nii.gz -o 2225-X4-DTI-
fi
if [ ! -f 2225-X4-gray.nii.gz ]; then
	antsApplyTransforms -d 3 -i smooth_1mm_gray.nii.gz -o 2225-X4-gray.nii.gz -r 2225-X4-DTIb0.nii.gz -t [2225-X4-DTI-0GenericAffine.mat,1] -t 2225-X4-DTI-1InverseWarp.nii.gz -t [2225-X4-T1-0GenericAffine.mat,1] -t 2225-X4-T1-1InverseWarp.nii.gz -t [2225reg0GenericAffine.mat,1] -t 2225reg1InverseWarp.nii.gz -t [avg0GenericAffine.mat,1] -t avg1InverseWarp.nii.gz
fi
if [ ! -f 2225-X4-white.nii.gz ]; then
	antsApplyTransforms -d 3 -i smooth_1mm_white.nii.gz -o 2225-X4-white.nii.gz -r 2225-X4-DTIb0.nii.gz -t [2225-X4-DTI-0GenericAffine.mat,1] -t 2225-X4-DTI-1InverseWarp.nii.gz -t [2225-X4-T1-0GenericAffine.mat,1] -t 2225-X4-T1-1InverseWarp.nii.gz -t [2225reg0GenericAffine.mat,1] -t 2225reg1InverseWarp.nii.gz -t [avg0GenericAffine.mat,1] -t avg1InverseWarp.nii.gz
fi
if [ ! -f 2225-X5-T1-0GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f template2225.nii.gz -m 2225-X5-T1masked.nii.gz -o 2225-X5-T1-
fi
if [ ! -f 2225-X5-DTI-0GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f 2225-X5-T1masked.nii.gz -m 2225-X5-DTIb0.nii.gz -o 2225-X5-DTI-
fi
if [ ! -f 2225-X5-gray.nii.gz ]; then
	antsApplyTransforms -d 3 -i smooth_1mm_gray.nii.gz -o 2225-X5-gray.nii.gz -r 2225-X5-DTIb0.nii.gz -t [2225-X5-DTI-0GenericAffine.mat,1] -t 2225-X5-DTI-1InverseWarp.nii.gz -t [2225-X5-T1-0GenericAffine.mat,1] -t 2225-X5-T1-1InverseWarp.nii.gz -t [2225reg0GenericAffine.mat,1] -t 2225reg1InverseWarp.nii.gz -t [avg0GenericAffine.mat,1] -t avg1InverseWarp.nii.gz
fi
if [ ! -f 2225-X5-white.nii.gz ]; then
	antsApplyTransforms -d 3 -i smooth_1mm_white.nii.gz -o 2225-X5-white.nii.gz -r 2225-X5-DTIb0.nii.gz -t [2225-X5-DTI-0GenericAffine.mat,1] -t 2225-X5-DTI-1InverseWarp.nii.gz -t [2225-X5-T1-0GenericAffine.mat,1] -t 2225-X5-T1-1InverseWarp.nii.gz -t [2225reg0GenericAffine.mat,1] -t 2225reg1InverseWarp.nii.gz -t [avg0GenericAffine.mat,1] -t avg1InverseWarp.nii.gz
fi
if [ ! -f 2327reg0GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f template.nii.gz -m template2327.nii.gz -o 2327reg
fi
if [ ! -f 2327-X1-T1-0GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f template2327.nii.gz -m 2327-X1-T1masked.nii.gz -o 2327-X1-T1-
fi
if [ ! -f 2327-X1-DTI-0GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f 2327-X1-T1masked.nii.gz -m 2327-X1-DTIb0.nii.gz -o 2327-X1-DTI-
fi
if [ ! -f 2327-X1-gray.nii.gz ]; then
	antsApplyTransforms -d 3 -i smooth_1mm_gray.nii.gz -o 2327-X1-gray.nii.gz -r 2327-X1-DTIb0.nii.gz -t [2327-X1-DTI-0GenericAffine.mat,1] -t 2327-X1-DTI-1InverseWarp.nii.gz -t [2327-X1-T1-0GenericAffine.mat,1] -t 2327-X1-T1-1InverseWarp.nii.gz -t [2327reg0GenericAffine.mat,1] -t 2327reg1InverseWarp.nii.gz -t [avg0GenericAffine.mat,1] -t avg1InverseWarp.nii.gz
fi
if [ ! -f 2327-X1-white.nii.gz ]; then
	antsApplyTransforms -d 3 -i smooth_1mm_white.nii.gz -o 2327-X1-white.nii.gz -r 2327-X1-DTIb0.nii.gz -t [2327-X1-DTI-0GenericAffine.mat,1] -t 2327-X1-DTI-1InverseWarp.nii.gz -t [2327-X1-T1-0GenericAffine.mat,1] -t 2327-X1-T1-1InverseWarp.nii.gz -t [2327reg0GenericAffine.mat,1] -t 2327reg1InverseWarp.nii.gz -t [avg0GenericAffine.mat,1] -t avg1InverseWarp.nii.gz
fi
if [ ! -f 2327-X2-T1-0GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f template2327.nii.gz -m 2327-X2-T1masked.nii.gz -o 2327-X2-T1-
fi
if [ ! -f 2327-X2-DTI-0GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f 2327-X2-T1masked.nii.gz -m 2327-X2-DTIb0.nii.gz -o 2327-X2-DTI-
fi
if [ ! -f 2327-X2-gray.nii.gz ]; then
	antsApplyTransforms -d 3 -i smooth_1mm_gray.nii.gz -o 2327-X2-gray.nii.gz -r 2327-X2-DTIb0.nii.gz -t [2327-X2-DTI-0GenericAffine.mat,1] -t 2327-X2-DTI-1InverseWarp.nii.gz -t [2327-X2-T1-0GenericAffine.mat,1] -t 2327-X2-T1-1InverseWarp.nii.gz -t [2327reg0GenericAffine.mat,1] -t 2327reg1InverseWarp.nii.gz -t [avg0GenericAffine.mat,1] -t avg1InverseWarp.nii.gz
fi
if [ ! -f 2327-X2-white.nii.gz ]; then
	antsApplyTransforms -d 3 -i smooth_1mm_white.nii.gz -o 2327-X2-white.nii.gz -r 2327-X2-DTIb0.nii.gz -t [2327-X2-DTI-0GenericAffine.mat,1] -t 2327-X2-DTI-1InverseWarp.nii.gz -t [2327-X2-T1-0GenericAffine.mat,1] -t 2327-X2-T1-1InverseWarp.nii.gz -t [2327reg0GenericAffine.mat,1] -t 2327reg1InverseWarp.nii.gz -t [avg0GenericAffine.mat,1] -t avg1InverseWarp.nii.gz
fi
if [ ! -f 2327-X3-T1-0GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f template2327.nii.gz -m 2327-X3-T1masked.nii.gz -o 2327-X3-T1-
fi
if [ ! -f 2327-X3-DTI-0GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f 2327-X3-T1masked.nii.gz -m 2327-X3-DTIb0.nii.gz -o 2327-X3-DTI-
fi
if [ ! -f 2327-X3-gray.nii.gz ]; then
	antsApplyTransforms -d 3 -i smooth_1mm_gray.nii.gz -o 2327-X3-gray.nii.gz -r 2327-X3-DTIb0.nii.gz -t [2327-X3-DTI-0GenericAffine.mat,1] -t 2327-X3-DTI-1InverseWarp.nii.gz -t [2327-X3-T1-0GenericAffine.mat,1] -t 2327-X3-T1-1InverseWarp.nii.gz -t [2327reg0GenericAffine.mat,1] -t 2327reg1InverseWarp.nii.gz -t [avg0GenericAffine.mat,1] -t avg1InverseWarp.nii.gz
fi
if [ ! -f 2327-X3-white.nii.gz ]; then
	antsApplyTransforms -d 3 -i smooth_1mm_white.nii.gz -o 2327-X3-white.nii.gz -r 2327-X3-DTIb0.nii.gz -t [2327-X3-DTI-0GenericAffine.mat,1] -t 2327-X3-DTI-1InverseWarp.nii.gz -t [2327-X3-T1-0GenericAffine.mat,1] -t 2327-X3-T1-1InverseWarp.nii.gz -t [2327reg0GenericAffine.mat,1] -t 2327reg1InverseWarp.nii.gz -t [avg0GenericAffine.mat,1] -t avg1InverseWarp.nii.gz
fi
if [ ! -f 2327-X4-T1-0GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f template2327.nii.gz -m 2327-X4-T1masked.nii.gz -o 2327-X4-T1-
fi
if [ ! -f 2327-X4-DTI-0GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f 2327-X4-T1masked.nii.gz -m 2327-X4-DTIb0.nii.gz -o 2327-X4-DTI-
fi
if [ ! -f 2327-X4-gray.nii.gz ]; then
	antsApplyTransforms -d 3 -i smooth_1mm_gray.nii.gz -o 2327-X4-gray.nii.gz -r 2327-X4-DTIb0.nii.gz -t [2327-X4-DTI-0GenericAffine.mat,1] -t 2327-X4-DTI-1InverseWarp.nii.gz -t [2327-X4-T1-0GenericAffine.mat,1] -t 2327-X4-T1-1InverseWarp.nii.gz -t [2327reg0GenericAffine.mat,1] -t 2327reg1InverseWarp.nii.gz -t [avg0GenericAffine.mat,1] -t avg1InverseWarp.nii.gz
fi
if [ ! -f 2327-X4-white.nii.gz ]; then
	antsApplyTransforms -d 3 -i smooth_1mm_white.nii.gz -o 2327-X4-white.nii.gz -r 2327-X4-DTIb0.nii.gz -t [2327-X4-DTI-0GenericAffine.mat,1] -t 2327-X4-DTI-1InverseWarp.nii.gz -t [2327-X4-T1-0GenericAffine.mat,1] -t 2327-X4-T1-1InverseWarp.nii.gz -t [2327reg0GenericAffine.mat,1] -t 2327reg1InverseWarp.nii.gz -t [avg0GenericAffine.mat,1] -t avg1InverseWarp.nii.gz
fi
if [ ! -f 2327-X5-T1-0GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f template2327.nii.gz -m 2327-X5-T1masked.nii.gz -o 2327-X5-T1-
fi
if [ ! -f 2327-X5-DTI-0GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f 2327-X5-T1masked.nii.gz -m 2327-X5-DTIb0.nii.gz -o 2327-X5-DTI-
fi
if [ ! -f 2327-X5-gray.nii.gz ]; then
	antsApplyTransforms -d 3 -i smooth_1mm_gray.nii.gz -o 2327-X5-gray.nii.gz -r 2327-X5-DTIb0.nii.gz -t [2327-X5-DTI-0GenericAffine.mat,1] -t 2327-X5-DTI-1InverseWarp.nii.gz -t [2327-X5-T1-0GenericAffine.mat,1] -t 2327-X5-T1-1InverseWarp.nii.gz -t [2327reg0GenericAffine.mat,1] -t 2327reg1InverseWarp.nii.gz -t [avg0GenericAffine.mat,1] -t avg1InverseWarp.nii.gz
fi
if [ ! -f 2327-X5-white.nii.gz ]; then
	antsApplyTransforms -d 3 -i smooth_1mm_white.nii.gz -o 2327-X5-white.nii.gz -r 2327-X5-DTIb0.nii.gz -t [2327-X5-DTI-0GenericAffine.mat,1] -t 2327-X5-DTI-1InverseWarp.nii.gz -t [2327-X5-T1-0GenericAffine.mat,1] -t 2327-X5-T1-1InverseWarp.nii.gz -t [2327reg0GenericAffine.mat,1] -t 2327reg1InverseWarp.nii.gz -t [avg0GenericAffine.mat,1] -t avg1InverseWarp.nii.gz
fi
if [ ! -f 2444reg0GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f template.nii.gz -m template2444.nii.gz -o 2444reg
fi
if [ ! -f 2444-X1-T1-0GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f template2444.nii.gz -m 2444-X1-T1masked.nii.gz -o 2444-X1-T1-
fi
if [ ! -f 2444-X1-DTI-0GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f 2444-X1-T1masked.nii.gz -m 2444-X1-DTIb0.nii.gz -o 2444-X1-DTI-
fi
if [ ! -f 2444-X1-gray.nii.gz ]; then
	antsApplyTransforms -d 3 -i smooth_1mm_gray.nii.gz -o 2444-X1-gray.nii.gz -r 2444-X1-DTIb0.nii.gz -t [2444-X1-DTI-0GenericAffine.mat,1] -t 2444-X1-DTI-1InverseWarp.nii.gz -t [2444-X1-T1-0GenericAffine.mat,1] -t 2444-X1-T1-1InverseWarp.nii.gz -t [2444reg0GenericAffine.mat,1] -t 2444reg1InverseWarp.nii.gz -t [avg0GenericAffine.mat,1] -t avg1InverseWarp.nii.gz
fi
if [ ! -f 2444-X1-white.nii.gz ]; then
	antsApplyTransforms -d 3 -i smooth_1mm_white.nii.gz -o 2444-X1-white.nii.gz -r 2444-X1-DTIb0.nii.gz -t [2444-X1-DTI-0GenericAffine.mat,1] -t 2444-X1-DTI-1InverseWarp.nii.gz -t [2444-X1-T1-0GenericAffine.mat,1] -t 2444-X1-T1-1InverseWarp.nii.gz -t [2444reg0GenericAffine.mat,1] -t 2444reg1InverseWarp.nii.gz -t [avg0GenericAffine.mat,1] -t avg1InverseWarp.nii.gz
fi
if [ ! -f 2444-X2-T1-0GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f template2444.nii.gz -m 2444-X2-T1masked.nii.gz -o 2444-X2-T1-
fi
if [ ! -f 2444-X2-DTI-0GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f 2444-X2-T1masked.nii.gz -m 2444-X2-DTIb0.nii.gz -o 2444-X2-DTI-
fi
if [ ! -f 2444-X2-gray.nii.gz ]; then
	antsApplyTransforms -d 3 -i smooth_1mm_gray.nii.gz -o 2444-X2-gray.nii.gz -r 2444-X2-DTIb0.nii.gz -t [2444-X2-DTI-0GenericAffine.mat,1] -t 2444-X2-DTI-1InverseWarp.nii.gz -t [2444-X2-T1-0GenericAffine.mat,1] -t 2444-X2-T1-1InverseWarp.nii.gz -t [2444reg0GenericAffine.mat,1] -t 2444reg1InverseWarp.nii.gz -t [avg0GenericAffine.mat,1] -t avg1InverseWarp.nii.gz
fi
if [ ! -f 2444-X2-white.nii.gz ]; then
	antsApplyTransforms -d 3 -i smooth_1mm_white.nii.gz -o 2444-X2-white.nii.gz -r 2444-X2-DTIb0.nii.gz -t [2444-X2-DTI-0GenericAffine.mat,1] -t 2444-X2-DTI-1InverseWarp.nii.gz -t [2444-X2-T1-0GenericAffine.mat,1] -t 2444-X2-T1-1InverseWarp.nii.gz -t [2444reg0GenericAffine.mat,1] -t 2444reg1InverseWarp.nii.gz -t [avg0GenericAffine.mat,1] -t avg1InverseWarp.nii.gz
fi
if [ ! -f 2444-X3-T1-0GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f template2444.nii.gz -m 2444-X3-T1masked.nii.gz -o 2444-X3-T1-
fi
if [ ! -f 2444-X3-DTI-0GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f 2444-X3-T1masked.nii.gz -m 2444-X3-DTIb0.nii.gz -o 2444-X3-DTI-
fi
if [ ! -f 2444-X3-gray.nii.gz ]; then
	antsApplyTransforms -d 3 -i smooth_1mm_gray.nii.gz -o 2444-X3-gray.nii.gz -r 2444-X3-DTIb0.nii.gz -t [2444-X3-DTI-0GenericAffine.mat,1] -t 2444-X3-DTI-1InverseWarp.nii.gz -t [2444-X3-T1-0GenericAffine.mat,1] -t 2444-X3-T1-1InverseWarp.nii.gz -t [2444reg0GenericAffine.mat,1] -t 2444reg1InverseWarp.nii.gz -t [avg0GenericAffine.mat,1] -t avg1InverseWarp.nii.gz
fi
if [ ! -f 2444-X3-white.nii.gz ]; then
	antsApplyTransforms -d 3 -i smooth_1mm_white.nii.gz -o 2444-X3-white.nii.gz -r 2444-X3-DTIb0.nii.gz -t [2444-X3-DTI-0GenericAffine.mat,1] -t 2444-X3-DTI-1InverseWarp.nii.gz -t [2444-X3-T1-0GenericAffine.mat,1] -t 2444-X3-T1-1InverseWarp.nii.gz -t [2444reg0GenericAffine.mat,1] -t 2444reg1InverseWarp.nii.gz -t [avg0GenericAffine.mat,1] -t avg1InverseWarp.nii.gz
fi
if [ ! -f 2444-X4-T1-0GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f template2444.nii.gz -m 2444-X4-T1masked.nii.gz -o 2444-X4-T1-
fi
if [ ! -f 2444-X4-DTI-0GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f 2444-X4-T1masked.nii.gz -m 2444-X4-DTIb0.nii.gz -o 2444-X4-DTI-
fi
if [ ! -f 2444-X4-gray.nii.gz ]; then
	antsApplyTransforms -d 3 -i smooth_1mm_gray.nii.gz -o 2444-X4-gray.nii.gz -r 2444-X4-DTIb0.nii.gz -t [2444-X4-DTI-0GenericAffine.mat,1] -t 2444-X4-DTI-1InverseWarp.nii.gz -t [2444-X4-T1-0GenericAffine.mat,1] -t 2444-X4-T1-1InverseWarp.nii.gz -t [2444reg0GenericAffine.mat,1] -t 2444reg1InverseWarp.nii.gz -t [avg0GenericAffine.mat,1] -t avg1InverseWarp.nii.gz
fi
if [ ! -f 2444-X4-white.nii.gz ]; then
	antsApplyTransforms -d 3 -i smooth_1mm_white.nii.gz -o 2444-X4-white.nii.gz -r 2444-X4-DTIb0.nii.gz -t [2444-X4-DTI-0GenericAffine.mat,1] -t 2444-X4-DTI-1InverseWarp.nii.gz -t [2444-X4-T1-0GenericAffine.mat,1] -t 2444-X4-T1-1InverseWarp.nii.gz -t [2444reg0GenericAffine.mat,1] -t 2444reg1InverseWarp.nii.gz -t [avg0GenericAffine.mat,1] -t avg1InverseWarp.nii.gz
fi
if [ ! -f 2444-X5-T1-0GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f template2444.nii.gz -m 2444-X5-T1masked.nii.gz -o 2444-X5-T1-
fi
if [ ! -f 2444-X5-DTI-0GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f 2444-X5-T1masked.nii.gz -m 2444-X5-DTIb0.nii.gz -o 2444-X5-DTI-
fi
if [ ! -f 2444-X5-gray.nii.gz ]; then
	antsApplyTransforms -d 3 -i smooth_1mm_gray.nii.gz -o 2444-X5-gray.nii.gz -r 2444-X5-DTIb0.nii.gz -t [2444-X5-DTI-0GenericAffine.mat,1] -t 2444-X5-DTI-1InverseWarp.nii.gz -t [2444-X5-T1-0GenericAffine.mat,1] -t 2444-X5-T1-1InverseWarp.nii.gz -t [2444reg0GenericAffine.mat,1] -t 2444reg1InverseWarp.nii.gz -t [avg0GenericAffine.mat,1] -t avg1InverseWarp.nii.gz
fi
if [ ! -f 2444-X5-white.nii.gz ]; then
	antsApplyTransforms -d 3 -i smooth_1mm_white.nii.gz -o 2444-X5-white.nii.gz -r 2444-X5-DTIb0.nii.gz -t [2444-X5-DTI-0GenericAffine.mat,1] -t 2444-X5-DTI-1InverseWarp.nii.gz -t [2444-X5-T1-0GenericAffine.mat,1] -t 2444-X5-T1-1InverseWarp.nii.gz -t [2444reg0GenericAffine.mat,1] -t 2444reg1InverseWarp.nii.gz -t [avg0GenericAffine.mat,1] -t avg1InverseWarp.nii.gz
fi
if [ ! -f 2459reg0GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f template.nii.gz -m template2459.nii.gz -o 2459reg
fi
if [ ! -f 2459-X1-T1-0GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f template2459.nii.gz -m 2459-X1-T1masked.nii.gz -o 2459-X1-T1-
fi
if [ ! -f 2459-X1-DTI-0GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f 2459-X1-T1masked.nii.gz -m 2459-X1-DTIb0.nii.gz -o 2459-X1-DTI-
fi
if [ ! -f 2459-X1-gray.nii.gz ]; then
	antsApplyTransforms -d 3 -i smooth_1mm_gray.nii.gz -o 2459-X1-gray.nii.gz -r 2459-X1-DTIb0.nii.gz -t [2459-X1-DTI-0GenericAffine.mat,1] -t 2459-X1-DTI-1InverseWarp.nii.gz -t [2459-X1-T1-0GenericAffine.mat,1] -t 2459-X1-T1-1InverseWarp.nii.gz -t [2459reg0GenericAffine.mat,1] -t 2459reg1InverseWarp.nii.gz -t [avg0GenericAffine.mat,1] -t avg1InverseWarp.nii.gz
fi
if [ ! -f 2459-X1-white.nii.gz ]; then
	antsApplyTransforms -d 3 -i smooth_1mm_white.nii.gz -o 2459-X1-white.nii.gz -r 2459-X1-DTIb0.nii.gz -t [2459-X1-DTI-0GenericAffine.mat,1] -t 2459-X1-DTI-1InverseWarp.nii.gz -t [2459-X1-T1-0GenericAffine.mat,1] -t 2459-X1-T1-1InverseWarp.nii.gz -t [2459reg0GenericAffine.mat,1] -t 2459reg1InverseWarp.nii.gz -t [avg0GenericAffine.mat,1] -t avg1InverseWarp.nii.gz
fi
if [ ! -f 2459-X2-T1-0GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f template2459.nii.gz -m 2459-X2-T1masked.nii.gz -o 2459-X2-T1-
fi
if [ ! -f 2459-X2-DTI-0GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f 2459-X2-T1masked.nii.gz -m 2459-X2-DTIb0.nii.gz -o 2459-X2-DTI-
fi
if [ ! -f 2459-X2-gray.nii.gz ]; then
	antsApplyTransforms -d 3 -i smooth_1mm_gray.nii.gz -o 2459-X2-gray.nii.gz -r 2459-X2-DTIb0.nii.gz -t [2459-X2-DTI-0GenericAffine.mat,1] -t 2459-X2-DTI-1InverseWarp.nii.gz -t [2459-X2-T1-0GenericAffine.mat,1] -t 2459-X2-T1-1InverseWarp.nii.gz -t [2459reg0GenericAffine.mat,1] -t 2459reg1InverseWarp.nii.gz -t [avg0GenericAffine.mat,1] -t avg1InverseWarp.nii.gz
fi
if [ ! -f 2459-X2-white.nii.gz ]; then
	antsApplyTransforms -d 3 -i smooth_1mm_white.nii.gz -o 2459-X2-white.nii.gz -r 2459-X2-DTIb0.nii.gz -t [2459-X2-DTI-0GenericAffine.mat,1] -t 2459-X2-DTI-1InverseWarp.nii.gz -t [2459-X2-T1-0GenericAffine.mat,1] -t 2459-X2-T1-1InverseWarp.nii.gz -t [2459reg0GenericAffine.mat,1] -t 2459reg1InverseWarp.nii.gz -t [avg0GenericAffine.mat,1] -t avg1InverseWarp.nii.gz
fi
if [ ! -f 2459-X3-T1-0GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f template2459.nii.gz -m 2459-X3-T1masked.nii.gz -o 2459-X3-T1-
fi
if [ ! -f 2459-X3-DTI-0GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f 2459-X3-T1masked.nii.gz -m 2459-X3-DTIb0.nii.gz -o 2459-X3-DTI-
fi
if [ ! -f 2459-X3-gray.nii.gz ]; then
	antsApplyTransforms -d 3 -i smooth_1mm_gray.nii.gz -o 2459-X3-gray.nii.gz -r 2459-X3-DTIb0.nii.gz -t [2459-X3-DTI-0GenericAffine.mat,1] -t 2459-X3-DTI-1InverseWarp.nii.gz -t [2459-X3-T1-0GenericAffine.mat,1] -t 2459-X3-T1-1InverseWarp.nii.gz -t [2459reg0GenericAffine.mat,1] -t 2459reg1InverseWarp.nii.gz -t [avg0GenericAffine.mat,1] -t avg1InverseWarp.nii.gz
fi
if [ ! -f 2459-X3-white.nii.gz ]; then
	antsApplyTransforms -d 3 -i smooth_1mm_white.nii.gz -o 2459-X3-white.nii.gz -r 2459-X3-DTIb0.nii.gz -t [2459-X3-DTI-0GenericAffine.mat,1] -t 2459-X3-DTI-1InverseWarp.nii.gz -t [2459-X3-T1-0GenericAffine.mat,1] -t 2459-X3-T1-1InverseWarp.nii.gz -t [2459reg0GenericAffine.mat,1] -t 2459reg1InverseWarp.nii.gz -t [avg0GenericAffine.mat,1] -t avg1InverseWarp.nii.gz
fi
if [ ! -f 2459-X4-T1-0GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f template2459.nii.gz -m 2459-X4-T1masked.nii.gz -o 2459-X4-T1-
fi
if [ ! -f 2459-X4-DTI-0GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f 2459-X4-T1masked.nii.gz -m 2459-X4-DTIb0.nii.gz -o 2459-X4-DTI-
fi
if [ ! -f 2459-X4-gray.nii.gz ]; then
	antsApplyTransforms -d 3 -i smooth_1mm_gray.nii.gz -o 2459-X4-gray.nii.gz -r 2459-X4-DTIb0.nii.gz -t [2459-X4-DTI-0GenericAffine.mat,1] -t 2459-X4-DTI-1InverseWarp.nii.gz -t [2459-X4-T1-0GenericAffine.mat,1] -t 2459-X4-T1-1InverseWarp.nii.gz -t [2459reg0GenericAffine.mat,1] -t 2459reg1InverseWarp.nii.gz -t [avg0GenericAffine.mat,1] -t avg1InverseWarp.nii.gz
fi
if [ ! -f 2459-X4-white.nii.gz ]; then
	antsApplyTransforms -d 3 -i smooth_1mm_white.nii.gz -o 2459-X4-white.nii.gz -r 2459-X4-DTIb0.nii.gz -t [2459-X4-DTI-0GenericAffine.mat,1] -t 2459-X4-DTI-1InverseWarp.nii.gz -t [2459-X4-T1-0GenericAffine.mat,1] -t 2459-X4-T1-1InverseWarp.nii.gz -t [2459reg0GenericAffine.mat,1] -t 2459reg1InverseWarp.nii.gz -t [avg0GenericAffine.mat,1] -t avg1InverseWarp.nii.gz
fi
if [ ! -f 2459-X5-T1-0GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f template2459.nii.gz -m 2459-X5-T1masked.nii.gz -o 2459-X5-T1-
fi
if [ ! -f 2459-X5-DTI-0GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f 2459-X5-T1masked.nii.gz -m 2459-X5-DTIb0.nii.gz -o 2459-X5-DTI-
fi
if [ ! -f 2459-X5-gray.nii.gz ]; then
	antsApplyTransforms -d 3 -i smooth_1mm_gray.nii.gz -o 2459-X5-gray.nii.gz -r 2459-X5-DTIb0.nii.gz -t [2459-X5-DTI-0GenericAffine.mat,1] -t 2459-X5-DTI-1InverseWarp.nii.gz -t [2459-X5-T1-0GenericAffine.mat,1] -t 2459-X5-T1-1InverseWarp.nii.gz -t [2459reg0GenericAffine.mat,1] -t 2459reg1InverseWarp.nii.gz -t [avg0GenericAffine.mat,1] -t avg1InverseWarp.nii.gz
fi
if [ ! -f 2459-X5-white.nii.gz ]; then
	antsApplyTransforms -d 3 -i smooth_1mm_white.nii.gz -o 2459-X5-white.nii.gz -r 2459-X5-DTIb0.nii.gz -t [2459-X5-DTI-0GenericAffine.mat,1] -t 2459-X5-DTI-1InverseWarp.nii.gz -t [2459-X5-T1-0GenericAffine.mat,1] -t 2459-X5-T1-1InverseWarp.nii.gz -t [2459reg0GenericAffine.mat,1] -t 2459reg1InverseWarp.nii.gz -t [avg0GenericAffine.mat,1] -t avg1InverseWarp.nii.gz
fi
if [ ! -f 2502reg0GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f template.nii.gz -m template2502.nii.gz -o 2502reg
fi
if [ ! -f 2502-X1-T1-0GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f template2502.nii.gz -m 2502-X1-T1masked.nii.gz -o 2502-X1-T1-
fi
if [ ! -f 2502-X1-DTI-0GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f 2502-X1-T1masked.nii.gz -m 2502-X1-DTIb0.nii.gz -o 2502-X1-DTI-
fi
if [ ! -f 2502-X1-gray.nii.gz ]; then
	antsApplyTransforms -d 3 -i smooth_1mm_gray.nii.gz -o 2502-X1-gray.nii.gz -r 2502-X1-DTIb0.nii.gz -t [2502-X1-DTI-0GenericAffine.mat,1] -t 2502-X1-DTI-1InverseWarp.nii.gz -t [2502-X1-T1-0GenericAffine.mat,1] -t 2502-X1-T1-1InverseWarp.nii.gz -t [2502reg0GenericAffine.mat,1] -t 2502reg1InverseWarp.nii.gz -t [avg0GenericAffine.mat,1] -t avg1InverseWarp.nii.gz
fi
if [ ! -f 2502-X1-white.nii.gz ]; then
	antsApplyTransforms -d 3 -i smooth_1mm_white.nii.gz -o 2502-X1-white.nii.gz -r 2502-X1-DTIb0.nii.gz -t [2502-X1-DTI-0GenericAffine.mat,1] -t 2502-X1-DTI-1InverseWarp.nii.gz -t [2502-X1-T1-0GenericAffine.mat,1] -t 2502-X1-T1-1InverseWarp.nii.gz -t [2502reg0GenericAffine.mat,1] -t 2502reg1InverseWarp.nii.gz -t [avg0GenericAffine.mat,1] -t avg1InverseWarp.nii.gz
fi
if [ ! -f 2502-X2-T1-0GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f template2502.nii.gz -m 2502-X2-T1masked.nii.gz -o 2502-X2-T1-
fi
if [ ! -f 2502-X2-DTI-0GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f 2502-X2-T1masked.nii.gz -m 2502-X2-DTIb0.nii.gz -o 2502-X2-DTI-
fi
if [ ! -f 2502-X2-gray.nii.gz ]; then
	antsApplyTransforms -d 3 -i smooth_1mm_gray.nii.gz -o 2502-X2-gray.nii.gz -r 2502-X2-DTIb0.nii.gz -t [2502-X2-DTI-0GenericAffine.mat,1] -t 2502-X2-DTI-1InverseWarp.nii.gz -t [2502-X2-T1-0GenericAffine.mat,1] -t 2502-X2-T1-1InverseWarp.nii.gz -t [2502reg0GenericAffine.mat,1] -t 2502reg1InverseWarp.nii.gz -t [avg0GenericAffine.mat,1] -t avg1InverseWarp.nii.gz
fi
if [ ! -f 2502-X2-white.nii.gz ]; then
	antsApplyTransforms -d 3 -i smooth_1mm_white.nii.gz -o 2502-X2-white.nii.gz -r 2502-X2-DTIb0.nii.gz -t [2502-X2-DTI-0GenericAffine.mat,1] -t 2502-X2-DTI-1InverseWarp.nii.gz -t [2502-X2-T1-0GenericAffine.mat,1] -t 2502-X2-T1-1InverseWarp.nii.gz -t [2502reg0GenericAffine.mat,1] -t 2502reg1InverseWarp.nii.gz -t [avg0GenericAffine.mat,1] -t avg1InverseWarp.nii.gz
fi
if [ ! -f 2502-X3-T1-0GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f template2502.nii.gz -m 2502-X3-T1masked.nii.gz -o 2502-X3-T1-
fi
if [ ! -f 2502-X3-DTI-0GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f 2502-X3-T1masked.nii.gz -m 2502-X3-DTIb0.nii.gz -o 2502-X3-DTI-
fi
if [ ! -f 2502-X3-gray.nii.gz ]; then
	antsApplyTransforms -d 3 -i smooth_1mm_gray.nii.gz -o 2502-X3-gray.nii.gz -r 2502-X3-DTIb0.nii.gz -t [2502-X3-DTI-0GenericAffine.mat,1] -t 2502-X3-DTI-1InverseWarp.nii.gz -t [2502-X3-T1-0GenericAffine.mat,1] -t 2502-X3-T1-1InverseWarp.nii.gz -t [2502reg0GenericAffine.mat,1] -t 2502reg1InverseWarp.nii.gz -t [avg0GenericAffine.mat,1] -t avg1InverseWarp.nii.gz
fi
if [ ! -f 2502-X3-white.nii.gz ]; then
	antsApplyTransforms -d 3 -i smooth_1mm_white.nii.gz -o 2502-X3-white.nii.gz -r 2502-X3-DTIb0.nii.gz -t [2502-X3-DTI-0GenericAffine.mat,1] -t 2502-X3-DTI-1InverseWarp.nii.gz -t [2502-X3-T1-0GenericAffine.mat,1] -t 2502-X3-T1-1InverseWarp.nii.gz -t [2502reg0GenericAffine.mat,1] -t 2502reg1InverseWarp.nii.gz -t [avg0GenericAffine.mat,1] -t avg1InverseWarp.nii.gz
fi
if [ ! -f 2502-X4-T1-0GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f template2502.nii.gz -m 2502-X4-T1masked.nii.gz -o 2502-X4-T1-
fi
if [ ! -f 2502-X4-DTI-0GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f 2502-X4-T1masked.nii.gz -m 2502-X4-DTIb0.nii.gz -o 2502-X4-DTI-
fi
if [ ! -f 2502-X4-gray.nii.gz ]; then
	antsApplyTransforms -d 3 -i smooth_1mm_gray.nii.gz -o 2502-X4-gray.nii.gz -r 2502-X4-DTIb0.nii.gz -t [2502-X4-DTI-0GenericAffine.mat,1] -t 2502-X4-DTI-1InverseWarp.nii.gz -t [2502-X4-T1-0GenericAffine.mat,1] -t 2502-X4-T1-1InverseWarp.nii.gz -t [2502reg0GenericAffine.mat,1] -t 2502reg1InverseWarp.nii.gz -t [avg0GenericAffine.mat,1] -t avg1InverseWarp.nii.gz
fi
if [ ! -f 2502-X4-white.nii.gz ]; then
	antsApplyTransforms -d 3 -i smooth_1mm_white.nii.gz -o 2502-X4-white.nii.gz -r 2502-X4-DTIb0.nii.gz -t [2502-X4-DTI-0GenericAffine.mat,1] -t 2502-X4-DTI-1InverseWarp.nii.gz -t [2502-X4-T1-0GenericAffine.mat,1] -t 2502-X4-T1-1InverseWarp.nii.gz -t [2502reg0GenericAffine.mat,1] -t 2502reg1InverseWarp.nii.gz -t [avg0GenericAffine.mat,1] -t avg1InverseWarp.nii.gz
fi
if [ ! -f 2502-X5-T1-0GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f template2502.nii.gz -m 2502-X5-T1masked.nii.gz -o 2502-X5-T1-
fi
if [ ! -f 2502-X5-DTI-0GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f 2502-X5-T1masked.nii.gz -m 2502-X5-DTIb0.nii.gz -o 2502-X5-DTI-
fi
if [ ! -f 2502-X5-gray.nii.gz ]; then
	antsApplyTransforms -d 3 -i smooth_1mm_gray.nii.gz -o 2502-X5-gray.nii.gz -r 2502-X5-DTIb0.nii.gz -t [2502-X5-DTI-0GenericAffine.mat,1] -t 2502-X5-DTI-1InverseWarp.nii.gz -t [2502-X5-T1-0GenericAffine.mat,1] -t 2502-X5-T1-1InverseWarp.nii.gz -t [2502reg0GenericAffine.mat,1] -t 2502reg1InverseWarp.nii.gz -t [avg0GenericAffine.mat,1] -t avg1InverseWarp.nii.gz
fi
if [ ! -f 2502-X5-white.nii.gz ]; then
	antsApplyTransforms -d 3 -i smooth_1mm_white.nii.gz -o 2502-X5-white.nii.gz -r 2502-X5-DTIb0.nii.gz -t [2502-X5-DTI-0GenericAffine.mat,1] -t 2502-X5-DTI-1InverseWarp.nii.gz -t [2502-X5-T1-0GenericAffine.mat,1] -t 2502-X5-T1-1InverseWarp.nii.gz -t [2502reg0GenericAffine.mat,1] -t 2502reg1InverseWarp.nii.gz -t [avg0GenericAffine.mat,1] -t avg1InverseWarp.nii.gz
fi
if [ ! -f 2672reg0GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f template.nii.gz -m template2672.nii.gz -o 2672reg
fi
if [ ! -f 2672-X1-T1-0GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f template2672.nii.gz -m 2672-X1-T1masked.nii.gz -o 2672-X1-T1-
fi
if [ ! -f 2672-X1-DTI-0GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f 2672-X1-T1masked.nii.gz -m 2672-X1-DTIb0.nii.gz -o 2672-X1-DTI-
fi
if [ ! -f 2672-X1-gray.nii.gz ]; then
	antsApplyTransforms -d 3 -i smooth_1mm_gray.nii.gz -o 2672-X1-gray.nii.gz -r 2672-X1-DTIb0.nii.gz -t [2672-X1-DTI-0GenericAffine.mat,1] -t 2672-X1-DTI-1InverseWarp.nii.gz -t [2672-X1-T1-0GenericAffine.mat,1] -t 2672-X1-T1-1InverseWarp.nii.gz -t [2672reg0GenericAffine.mat,1] -t 2672reg1InverseWarp.nii.gz -t [avg0GenericAffine.mat,1] -t avg1InverseWarp.nii.gz
fi
if [ ! -f 2672-X1-white.nii.gz ]; then
	antsApplyTransforms -d 3 -i smooth_1mm_white.nii.gz -o 2672-X1-white.nii.gz -r 2672-X1-DTIb0.nii.gz -t [2672-X1-DTI-0GenericAffine.mat,1] -t 2672-X1-DTI-1InverseWarp.nii.gz -t [2672-X1-T1-0GenericAffine.mat,1] -t 2672-X1-T1-1InverseWarp.nii.gz -t [2672reg0GenericAffine.mat,1] -t 2672reg1InverseWarp.nii.gz -t [avg0GenericAffine.mat,1] -t avg1InverseWarp.nii.gz
fi
if [ ! -f 2672-X2-T1-0GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f template2672.nii.gz -m 2672-X2-T1masked.nii.gz -o 2672-X2-T1-
fi
if [ ! -f 2672-X2-DTI-0GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f 2672-X2-T1masked.nii.gz -m 2672-X2-DTIb0.nii.gz -o 2672-X2-DTI-
fi
if [ ! -f 2672-X2-gray.nii.gz ]; then
	antsApplyTransforms -d 3 -i smooth_1mm_gray.nii.gz -o 2672-X2-gray.nii.gz -r 2672-X2-DTIb0.nii.gz -t [2672-X2-DTI-0GenericAffine.mat,1] -t 2672-X2-DTI-1InverseWarp.nii.gz -t [2672-X2-T1-0GenericAffine.mat,1] -t 2672-X2-T1-1InverseWarp.nii.gz -t [2672reg0GenericAffine.mat,1] -t 2672reg1InverseWarp.nii.gz -t [avg0GenericAffine.mat,1] -t avg1InverseWarp.nii.gz
fi
if [ ! -f 2672-X2-white.nii.gz ]; then
	antsApplyTransforms -d 3 -i smooth_1mm_white.nii.gz -o 2672-X2-white.nii.gz -r 2672-X2-DTIb0.nii.gz -t [2672-X2-DTI-0GenericAffine.mat,1] -t 2672-X2-DTI-1InverseWarp.nii.gz -t [2672-X2-T1-0GenericAffine.mat,1] -t 2672-X2-T1-1InverseWarp.nii.gz -t [2672reg0GenericAffine.mat,1] -t 2672reg1InverseWarp.nii.gz -t [avg0GenericAffine.mat,1] -t avg1InverseWarp.nii.gz
fi
if [ ! -f 2672-X3-T1-0GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f template2672.nii.gz -m 2672-X3-T1masked.nii.gz -o 2672-X3-T1-
fi
if [ ! -f 2672-X3-DTI-0GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f 2672-X3-T1masked.nii.gz -m 2672-X3-DTIb0.nii.gz -o 2672-X3-DTI-
fi
if [ ! -f 2672-X3-gray.nii.gz ]; then
	antsApplyTransforms -d 3 -i smooth_1mm_gray.nii.gz -o 2672-X3-gray.nii.gz -r 2672-X3-DTIb0.nii.gz -t [2672-X3-DTI-0GenericAffine.mat,1] -t 2672-X3-DTI-1InverseWarp.nii.gz -t [2672-X3-T1-0GenericAffine.mat,1] -t 2672-X3-T1-1InverseWarp.nii.gz -t [2672reg0GenericAffine.mat,1] -t 2672reg1InverseWarp.nii.gz -t [avg0GenericAffine.mat,1] -t avg1InverseWarp.nii.gz
fi
if [ ! -f 2672-X3-white.nii.gz ]; then
	antsApplyTransforms -d 3 -i smooth_1mm_white.nii.gz -o 2672-X3-white.nii.gz -r 2672-X3-DTIb0.nii.gz -t [2672-X3-DTI-0GenericAffine.mat,1] -t 2672-X3-DTI-1InverseWarp.nii.gz -t [2672-X3-T1-0GenericAffine.mat,1] -t 2672-X3-T1-1InverseWarp.nii.gz -t [2672reg0GenericAffine.mat,1] -t 2672reg1InverseWarp.nii.gz -t [avg0GenericAffine.mat,1] -t avg1InverseWarp.nii.gz
fi
if [ ! -f 2672-X4-T1-0GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f template2672.nii.gz -m 2672-X4-T1masked.nii.gz -o 2672-X4-T1-
fi
if [ ! -f 2672-X4-DTI-0GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f 2672-X4-T1masked.nii.gz -m 2672-X4-DTIb0.nii.gz -o 2672-X4-DTI-
fi
if [ ! -f 2672-X4-gray.nii.gz ]; then
	antsApplyTransforms -d 3 -i smooth_1mm_gray.nii.gz -o 2672-X4-gray.nii.gz -r 2672-X4-DTIb0.nii.gz -t [2672-X4-DTI-0GenericAffine.mat,1] -t 2672-X4-DTI-1InverseWarp.nii.gz -t [2672-X4-T1-0GenericAffine.mat,1] -t 2672-X4-T1-1InverseWarp.nii.gz -t [2672reg0GenericAffine.mat,1] -t 2672reg1InverseWarp.nii.gz -t [avg0GenericAffine.mat,1] -t avg1InverseWarp.nii.gz
fi
if [ ! -f 2672-X4-white.nii.gz ]; then
	antsApplyTransforms -d 3 -i smooth_1mm_white.nii.gz -o 2672-X4-white.nii.gz -r 2672-X4-DTIb0.nii.gz -t [2672-X4-DTI-0GenericAffine.mat,1] -t 2672-X4-DTI-1InverseWarp.nii.gz -t [2672-X4-T1-0GenericAffine.mat,1] -t 2672-X4-T1-1InverseWarp.nii.gz -t [2672reg0GenericAffine.mat,1] -t 2672reg1InverseWarp.nii.gz -t [avg0GenericAffine.mat,1] -t avg1InverseWarp.nii.gz
fi
if [ ! -f 2672-X5-T1-0GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f template2672.nii.gz -m 2672-X5-T1masked.nii.gz -o 2672-X5-T1-
fi
if [ ! -f 2672-X5-DTI-0GenericAffine.mat ]; then
	antsRegistrationSyNQuick.sh -d 3 -f 2672-X5-T1masked.nii.gz -m 2672-X5-DTIb0.nii.gz -o 2672-X5-DTI-
fi
if [ ! -f 2672-X5-gray.nii.gz ]; then
	antsApplyTransforms -d 3 -i smooth_1mm_gray.nii.gz -o 2672-X5-gray.nii.gz -r 2672-X5-DTIb0.nii.gz -t [2672-X5-DTI-0GenericAffine.mat,1] -t 2672-X5-DTI-1InverseWarp.nii.gz -t [2672-X5-T1-0GenericAffine.mat,1] -t 2672-X5-T1-1InverseWarp.nii.gz -t [2672reg0GenericAffine.mat,1] -t 2672reg1InverseWarp.nii.gz -t [avg0GenericAffine.mat,1] -t avg1InverseWarp.nii.gz
fi
if [ ! -f 2672-X5-white.nii.gz ]; then
	antsApplyTransforms -d 3 -i smooth_1mm_white.nii.gz -o 2672-X5-white.nii.gz -r 2672-X5-DTIb0.nii.gz -t [2672-X5-DTI-0GenericAffine.mat,1] -t 2672-X5-DTI-1InverseWarp.nii.gz -t [2672-X5-T1-0GenericAffine.mat,1] -t 2672-X5-T1-1InverseWarp.nii.gz -t [2672reg0GenericAffine.mat,1] -t 2672reg1InverseWarp.nii.gz -t [avg0GenericAffine.mat,1] -t avg1InverseWarp.nii.gz
fi
