#!/bin/bash

cd $HOME/TFM/images
/usr/local/fsl/bin/eddy_correct /home/fsl/TFM/images/2225-X1-DTI.nii.gz /home/fsl/TFM/images/2225-X1-DTIecc 0
/usr/local/fsl/bin/bet /home/fsl/TFM/images/2225-X1-DTIecc /home/fsl/TFM/images/2225-X1-DTIecc_brain  -f 0.1 -g 0 -n -m
/usr/local/fsl/bin/dtifit --data=/home/fsl/TFM/images/2225-X1-DTIecc.nii.gz --out=/home/fsl/TFM/images/2225-X1-tensor --mask=/home/fsl/TFM/images/2225-X1-DTIecc_brain_mask.nii.gz --bvecs=/home/fsl/TFM/images/2225-X1-DTI.bvec --bvals=/home/fsl/TFM/images/2225-X1-DTI.bval
