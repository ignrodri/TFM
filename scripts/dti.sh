#!/bin/bash

cd $HOME/TFM/images
/usr/local/fsl/bin/eddy_correct /home/fsl/TFM/images/2225-X1-DTI.nii.gz /home/fsl/TFM/images/2225-X1-DTIecc 0
/usr/local/fsl/bin/bet /home/fsl/TFM/images/2225-X1-DTIecc /home/fsl/TFM/images/2225-X1-DTIecc_brain  -f 0.1 -g 0 -n -m
/usr/local/fsl/bin/dtifit --data=/home/fsl/TFM/images/2225-X1-DTIecc.nii.gz --out=/home/fsl/TFM/images/2225-X1-tensor --mask=/home/fsl/TFM/images/2225-X1-DTIecc_brain_mask.nii.gz --bvecs=/home/fsl/TFM/images/2225-X1-DTI.bvec --bvals=/home/fsl/TFM/images/2225-X1-DTI.bval
/usr/local/fsl/bin/eddy_correct /home/fsl/TFM/images/2225-X2-DTI.nii.gz /home/fsl/TFM/images/2225-X2-DTIecc 0
/usr/local/fsl/bin/bet /home/fsl/TFM/images/2225-X2-DTIecc /home/fsl/TFM/images/2225-X2-DTIecc_brain  -f 0.1 -g 0 -n -m
/usr/local/fsl/bin/dtifit --data=/home/fsl/TFM/images/2225-X2-DTIecc.nii.gz --out=/home/fsl/TFM/images/2225-X2-tensor --mask=/home/fsl/TFM/images/2225-X2-DTIecc_brain_mask.nii.gz --bvecs=/home/fsl/TFM/images/2225-X2-DTI.bvec --bvals=/home/fsl/TFM/images/2225-X2-DTI.bval
/usr/local/fsl/bin/eddy_correct /home/fsl/TFM/images/2225-X3-DTI.nii.gz /home/fsl/TFM/images/2225-X3-DTIecc 0
/usr/local/fsl/bin/bet /home/fsl/TFM/images/2225-X3-DTIecc /home/fsl/TFM/images/2225-X3-DTIecc_brain  -f 0.1 -g 0 -n -m
/usr/local/fsl/bin/dtifit --data=/home/fsl/TFM/images/2225-X3-DTIecc.nii.gz --out=/home/fsl/TFM/images/2225-X3-tensor --mask=/home/fsl/TFM/images/2225-X3-DTIecc_brain_mask.nii.gz --bvecs=/home/fsl/TFM/images/2225-X3-DTI.bvec --bvals=/home/fsl/TFM/images/2225-X3-DTI.bval
/usr/local/fsl/bin/eddy_correct /home/fsl/TFM/images/2225-X4-DTI.nii.gz /home/fsl/TFM/images/2225-X4-DTIecc 0
/usr/local/fsl/bin/bet /home/fsl/TFM/images/2225-X4-DTIecc /home/fsl/TFM/images/2225-X4-DTIecc_brain  -f 0.1 -g 0 -n -m
/usr/local/fsl/bin/dtifit --data=/home/fsl/TFM/images/2225-X4-DTIecc.nii.gz --out=/home/fsl/TFM/images/2225-X4-tensor --mask=/home/fsl/TFM/images/2225-X4-DTIecc_brain_mask.nii.gz --bvecs=/home/fsl/TFM/images/2225-X4-DTI.bvec --bvals=/home/fsl/TFM/images/2225-X4-DTI.bval
/usr/local/fsl/bin/eddy_correct /home/fsl/TFM/images/2225-X5-DTI.nii.gz /home/fsl/TFM/images/2225-X5-DTIecc 0
/usr/local/fsl/bin/bet /home/fsl/TFM/images/2225-X5-DTIecc /home/fsl/TFM/images/2225-X5-DTIecc_brain  -f 0.1 -g 0 -n -m
/usr/local/fsl/bin/dtifit --data=/home/fsl/TFM/images/2225-X5-DTIecc.nii.gz --out=/home/fsl/TFM/images/2225-X5-tensor --mask=/home/fsl/TFM/images/2225-X5-DTIecc_brain_mask.nii.gz --bvecs=/home/fsl/TFM/images/2225-X5-DTI.bvec --bvals=/home/fsl/TFM/images/2225-X5-DTI.bval
/usr/local/fsl/bin/eddy_correct /home/fsl/TFM/images/2327-X1-DTI.nii.gz /home/fsl/TFM/images/2327-X1-DTIecc 0
/usr/local/fsl/bin/bet /home/fsl/TFM/images/2327-X1-DTIecc /home/fsl/TFM/images/2327-X1-DTIecc_brain  -f 0.1 -g 0 -n -m
/usr/local/fsl/bin/dtifit --data=/home/fsl/TFM/images/2327-X1-DTIecc.nii.gz --out=/home/fsl/TFM/images/2327-X1-tensor --mask=/home/fsl/TFM/images/2327-X1-DTIecc_brain_mask.nii.gz --bvecs=/home/fsl/TFM/images/2327-X1-DTI.bvec --bvals=/home/fsl/TFM/images/2327-X1-DTI.bval
/usr/local/fsl/bin/eddy_correct /home/fsl/TFM/images/2327-X2-DTI.nii.gz /home/fsl/TFM/images/2327-X2-DTIecc 0
/usr/local/fsl/bin/bet /home/fsl/TFM/images/2327-X2-DTIecc /home/fsl/TFM/images/2327-X2-DTIecc_brain  -f 0.1 -g 0 -n -m
/usr/local/fsl/bin/dtifit --data=/home/fsl/TFM/images/2327-X2-DTIecc.nii.gz --out=/home/fsl/TFM/images/2327-X2-tensor --mask=/home/fsl/TFM/images/2327-X2-DTIecc_brain_mask.nii.gz --bvecs=/home/fsl/TFM/images/2327-X2-DTI.bvec --bvals=/home/fsl/TFM/images/2327-X2-DTI.bval
/usr/local/fsl/bin/eddy_correct /home/fsl/TFM/images/2327-X3-DTI.nii.gz /home/fsl/TFM/images/2327-X3-DTIecc 0
/usr/local/fsl/bin/bet /home/fsl/TFM/images/2327-X3-DTIecc /home/fsl/TFM/images/2327-X3-DTIecc_brain  -f 0.1 -g 0 -n -m
/usr/local/fsl/bin/dtifit --data=/home/fsl/TFM/images/2327-X3-DTIecc.nii.gz --out=/home/fsl/TFM/images/2327-X3-tensor --mask=/home/fsl/TFM/images/2327-X3-DTIecc_brain_mask.nii.gz --bvecs=/home/fsl/TFM/images/2327-X3-DTI.bvec --bvals=/home/fsl/TFM/images/2327-X3-DTI.bval
/usr/local/fsl/bin/eddy_correct /home/fsl/TFM/images/2327-X4-DTI.nii.gz /home/fsl/TFM/images/2327-X4-DTIecc 0
/usr/local/fsl/bin/bet /home/fsl/TFM/images/2327-X4-DTIecc /home/fsl/TFM/images/2327-X4-DTIecc_brain  -f 0.1 -g 0 -n -m
/usr/local/fsl/bin/dtifit --data=/home/fsl/TFM/images/2327-X4-DTIecc.nii.gz --out=/home/fsl/TFM/images/2327-X4-tensor --mask=/home/fsl/TFM/images/2327-X4-DTIecc_brain_mask.nii.gz --bvecs=/home/fsl/TFM/images/2327-X4-DTI.bvec --bvals=/home/fsl/TFM/images/2327-X4-DTI.bval
/usr/local/fsl/bin/eddy_correct /home/fsl/TFM/images/2327-X5-DTI.nii.gz /home/fsl/TFM/images/2327-X5-DTIecc 0
/usr/local/fsl/bin/bet /home/fsl/TFM/images/2327-X5-DTIecc /home/fsl/TFM/images/2327-X5-DTIecc_brain  -f 0.1 -g 0 -n -m
/usr/local/fsl/bin/dtifit --data=/home/fsl/TFM/images/2327-X5-DTIecc.nii.gz --out=/home/fsl/TFM/images/2327-X5-tensor --mask=/home/fsl/TFM/images/2327-X5-DTIecc_brain_mask.nii.gz --bvecs=/home/fsl/TFM/images/2327-X5-DTI.bvec --bvals=/home/fsl/TFM/images/2327-X5-DTI.bval
/usr/local/fsl/bin/eddy_correct /home/fsl/TFM/images/2444-X1-DTI.nii.gz /home/fsl/TFM/images/2444-X1-DTIecc 0
/usr/local/fsl/bin/bet /home/fsl/TFM/images/2444-X1-DTIecc /home/fsl/TFM/images/2444-X1-DTIecc_brain  -f 0.1 -g 0 -n -m
/usr/local/fsl/bin/dtifit --data=/home/fsl/TFM/images/2444-X1-DTIecc.nii.gz --out=/home/fsl/TFM/images/2444-X1-tensor --mask=/home/fsl/TFM/images/2444-X1-DTIecc_brain_mask.nii.gz --bvecs=/home/fsl/TFM/images/2444-X1-DTI.bvec --bvals=/home/fsl/TFM/images/2444-X1-DTI.bval
/usr/local/fsl/bin/eddy_correct /home/fsl/TFM/images/2444-X2-DTI.nii.gz /home/fsl/TFM/images/2444-X2-DTIecc 0
/usr/local/fsl/bin/bet /home/fsl/TFM/images/2444-X2-DTIecc /home/fsl/TFM/images/2444-X2-DTIecc_brain  -f 0.1 -g 0 -n -m
/usr/local/fsl/bin/dtifit --data=/home/fsl/TFM/images/2444-X2-DTIecc.nii.gz --out=/home/fsl/TFM/images/2444-X2-tensor --mask=/home/fsl/TFM/images/2444-X2-DTIecc_brain_mask.nii.gz --bvecs=/home/fsl/TFM/images/2444-X2-DTI.bvec --bvals=/home/fsl/TFM/images/2444-X2-DTI.bval
/usr/local/fsl/bin/eddy_correct /home/fsl/TFM/images/2444-X3-DTI.nii.gz /home/fsl/TFM/images/2444-X3-DTIecc 0
/usr/local/fsl/bin/bet /home/fsl/TFM/images/2444-X3-DTIecc /home/fsl/TFM/images/2444-X3-DTIecc_brain  -f 0.1 -g 0 -n -m
/usr/local/fsl/bin/dtifit --data=/home/fsl/TFM/images/2444-X3-DTIecc.nii.gz --out=/home/fsl/TFM/images/2444-X3-tensor --mask=/home/fsl/TFM/images/2444-X3-DTIecc_brain_mask.nii.gz --bvecs=/home/fsl/TFM/images/2444-X3-DTI.bvec --bvals=/home/fsl/TFM/images/2444-X3-DTI.bval
/usr/local/fsl/bin/eddy_correct /home/fsl/TFM/images/2444-X4-DTI.nii.gz /home/fsl/TFM/images/2444-X4-DTIecc 0
/usr/local/fsl/bin/bet /home/fsl/TFM/images/2444-X4-DTIecc /home/fsl/TFM/images/2444-X4-DTIecc_brain  -f 0.1 -g 0 -n -m
/usr/local/fsl/bin/dtifit --data=/home/fsl/TFM/images/2444-X4-DTIecc.nii.gz --out=/home/fsl/TFM/images/2444-X4-tensor --mask=/home/fsl/TFM/images/2444-X4-DTIecc_brain_mask.nii.gz --bvecs=/home/fsl/TFM/images/2444-X4-DTI.bvec --bvals=/home/fsl/TFM/images/2444-X4-DTI.bval
/usr/local/fsl/bin/eddy_correct /home/fsl/TFM/images/2444-X5-DTI.nii.gz /home/fsl/TFM/images/2444-X5-DTIecc 0
/usr/local/fsl/bin/bet /home/fsl/TFM/images/2444-X5-DTIecc /home/fsl/TFM/images/2444-X5-DTIecc_brain  -f 0.1 -g 0 -n -m
/usr/local/fsl/bin/dtifit --data=/home/fsl/TFM/images/2444-X5-DTIecc.nii.gz --out=/home/fsl/TFM/images/2444-X5-tensor --mask=/home/fsl/TFM/images/2444-X5-DTIecc_brain_mask.nii.gz --bvecs=/home/fsl/TFM/images/2444-X5-DTI.bvec --bvals=/home/fsl/TFM/images/2444-X5-DTI.bval
/usr/local/fsl/bin/eddy_correct /home/fsl/TFM/images/2459-X1-DTI.nii.gz /home/fsl/TFM/images/2459-X1-DTIecc 0
/usr/local/fsl/bin/bet /home/fsl/TFM/images/2459-X1-DTIecc /home/fsl/TFM/images/2459-X1-DTIecc_brain  -f 0.1 -g 0 -n -m
/usr/local/fsl/bin/dtifit --data=/home/fsl/TFM/images/2459-X1-DTIecc.nii.gz --out=/home/fsl/TFM/images/2459-X1-tensor --mask=/home/fsl/TFM/images/2459-X1-DTIecc_brain_mask.nii.gz --bvecs=/home/fsl/TFM/images/2459-X1-DTI.bvec --bvals=/home/fsl/TFM/images/2459-X1-DTI.bval
/usr/local/fsl/bin/eddy_correct /home/fsl/TFM/images/2459-X2-DTI.nii.gz /home/fsl/TFM/images/2459-X2-DTIecc 0
/usr/local/fsl/bin/bet /home/fsl/TFM/images/2459-X2-DTIecc /home/fsl/TFM/images/2459-X2-DTIecc_brain  -f 0.1 -g 0 -n -m
/usr/local/fsl/bin/dtifit --data=/home/fsl/TFM/images/2459-X2-DTIecc.nii.gz --out=/home/fsl/TFM/images/2459-X2-tensor --mask=/home/fsl/TFM/images/2459-X2-DTIecc_brain_mask.nii.gz --bvecs=/home/fsl/TFM/images/2459-X2-DTI.bvec --bvals=/home/fsl/TFM/images/2459-X2-DTI.bval
/usr/local/fsl/bin/eddy_correct /home/fsl/TFM/images/2459-X3-DTI.nii.gz /home/fsl/TFM/images/2459-X3-DTIecc 0
/usr/local/fsl/bin/bet /home/fsl/TFM/images/2459-X3-DTIecc /home/fsl/TFM/images/2459-X3-DTIecc_brain  -f 0.1 -g 0 -n -m
/usr/local/fsl/bin/dtifit --data=/home/fsl/TFM/images/2459-X3-DTIecc.nii.gz --out=/home/fsl/TFM/images/2459-X3-tensor --mask=/home/fsl/TFM/images/2459-X3-DTIecc_brain_mask.nii.gz --bvecs=/home/fsl/TFM/images/2459-X3-DTI.bvec --bvals=/home/fsl/TFM/images/2459-X3-DTI.bval
/usr/local/fsl/bin/eddy_correct /home/fsl/TFM/images/2459-X4-DTI.nii.gz /home/fsl/TFM/images/2459-X4-DTIecc 0
/usr/local/fsl/bin/bet /home/fsl/TFM/images/2459-X4-DTIecc /home/fsl/TFM/images/2459-X4-DTIecc_brain  -f 0.1 -g 0 -n -m
/usr/local/fsl/bin/dtifit --data=/home/fsl/TFM/images/2459-X4-DTIecc.nii.gz --out=/home/fsl/TFM/images/2459-X4-tensor --mask=/home/fsl/TFM/images/2459-X4-DTIecc_brain_mask.nii.gz --bvecs=/home/fsl/TFM/images/2459-X4-DTI.bvec --bvals=/home/fsl/TFM/images/2459-X4-DTI.bval
/usr/local/fsl/bin/eddy_correct /home/fsl/TFM/images/2459-X5-DTI.nii.gz /home/fsl/TFM/images/2459-X5-DTIecc 0
/usr/local/fsl/bin/bet /home/fsl/TFM/images/2459-X5-DTIecc /home/fsl/TFM/images/2459-X5-DTIecc_brain  -f 0.1 -g 0 -n -m
/usr/local/fsl/bin/dtifit --data=/home/fsl/TFM/images/2459-X5-DTIecc.nii.gz --out=/home/fsl/TFM/images/2459-X5-tensor --mask=/home/fsl/TFM/images/2459-X5-DTIecc_brain_mask.nii.gz --bvecs=/home/fsl/TFM/images/2459-X5-DTI.bvec --bvals=/home/fsl/TFM/images/2459-X5-DTI.bval
/usr/local/fsl/bin/eddy_correct /home/fsl/TFM/images/2502-X1-DTI.nii.gz /home/fsl/TFM/images/2502-X1-DTIecc 0
/usr/local/fsl/bin/bet /home/fsl/TFM/images/2502-X1-DTIecc /home/fsl/TFM/images/2502-X1-DTIecc_brain  -f 0.1 -g 0 -n -m
/usr/local/fsl/bin/dtifit --data=/home/fsl/TFM/images/2502-X1-DTIecc.nii.gz --out=/home/fsl/TFM/images/2502-X1-tensor --mask=/home/fsl/TFM/images/2502-X1-DTIecc_brain_mask.nii.gz --bvecs=/home/fsl/TFM/images/2502-X1-DTI.bvec --bvals=/home/fsl/TFM/images/2502-X1-DTI.bval
/usr/local/fsl/bin/eddy_correct /home/fsl/TFM/images/2502-X2-DTI.nii.gz /home/fsl/TFM/images/2502-X2-DTIecc 0
/usr/local/fsl/bin/bet /home/fsl/TFM/images/2502-X2-DTIecc /home/fsl/TFM/images/2502-X2-DTIecc_brain  -f 0.1 -g 0 -n -m
/usr/local/fsl/bin/dtifit --data=/home/fsl/TFM/images/2502-X2-DTIecc.nii.gz --out=/home/fsl/TFM/images/2502-X2-tensor --mask=/home/fsl/TFM/images/2502-X2-DTIecc_brain_mask.nii.gz --bvecs=/home/fsl/TFM/images/2502-X2-DTI.bvec --bvals=/home/fsl/TFM/images/2502-X2-DTI.bval
/usr/local/fsl/bin/eddy_correct /home/fsl/TFM/images/2502-X3-DTI.nii.gz /home/fsl/TFM/images/2502-X3-DTIecc 0
/usr/local/fsl/bin/bet /home/fsl/TFM/images/2502-X3-DTIecc /home/fsl/TFM/images/2502-X3-DTIecc_brain  -f 0.1 -g 0 -n -m
/usr/local/fsl/bin/dtifit --data=/home/fsl/TFM/images/2502-X3-DTIecc.nii.gz --out=/home/fsl/TFM/images/2502-X3-tensor --mask=/home/fsl/TFM/images/2502-X3-DTIecc_brain_mask.nii.gz --bvecs=/home/fsl/TFM/images/2502-X3-DTI.bvec --bvals=/home/fsl/TFM/images/2502-X3-DTI.bval
/usr/local/fsl/bin/eddy_correct /home/fsl/TFM/images/2502-X4-DTI.nii.gz /home/fsl/TFM/images/2502-X4-DTIecc 0
/usr/local/fsl/bin/bet /home/fsl/TFM/images/2502-X4-DTIecc /home/fsl/TFM/images/2502-X4-DTIecc_brain  -f 0.1 -g 0 -n -m
/usr/local/fsl/bin/dtifit --data=/home/fsl/TFM/images/2502-X4-DTIecc.nii.gz --out=/home/fsl/TFM/images/2502-X4-tensor --mask=/home/fsl/TFM/images/2502-X4-DTIecc_brain_mask.nii.gz --bvecs=/home/fsl/TFM/images/2502-X4-DTI.bvec --bvals=/home/fsl/TFM/images/2502-X4-DTI.bval
/usr/local/fsl/bin/eddy_correct /home/fsl/TFM/images/2502-X5-DTI.nii.gz /home/fsl/TFM/images/2502-X5-DTIecc 0
/usr/local/fsl/bin/bet /home/fsl/TFM/images/2502-X5-DTIecc /home/fsl/TFM/images/2502-X5-DTIecc_brain  -f 0.1 -g 0 -n -m
/usr/local/fsl/bin/dtifit --data=/home/fsl/TFM/images/2502-X5-DTIecc.nii.gz --out=/home/fsl/TFM/images/2502-X5-tensor --mask=/home/fsl/TFM/images/2502-X5-DTIecc_brain_mask.nii.gz --bvecs=/home/fsl/TFM/images/2502-X5-DTI.bvec --bvals=/home/fsl/TFM/images/2502-X5-DTI.bval
/usr/local/fsl/bin/eddy_correct /home/fsl/TFM/images/2672-X1-DTI.nii.gz /home/fsl/TFM/images/2672-X1-DTIecc 0
/usr/local/fsl/bin/bet /home/fsl/TFM/images/2672-X1-DTIecc /home/fsl/TFM/images/2672-X1-DTIecc_brain  -f 0.1 -g 0 -n -m
/usr/local/fsl/bin/dtifit --data=/home/fsl/TFM/images/2672-X1-DTIecc.nii.gz --out=/home/fsl/TFM/images/2672-X1-tensor --mask=/home/fsl/TFM/images/2672-X1-DTIecc_brain_mask.nii.gz --bvecs=/home/fsl/TFM/images/2672-X1-DTI.bvec --bvals=/home/fsl/TFM/images/2672-X1-DTI.bval
/usr/local/fsl/bin/eddy_correct /home/fsl/TFM/images/2672-X2-DTI.nii.gz /home/fsl/TFM/images/2672-X2-DTIecc 0
/usr/local/fsl/bin/bet /home/fsl/TFM/images/2672-X2-DTIecc /home/fsl/TFM/images/2672-X2-DTIecc_brain  -f 0.1 -g 0 -n -m
/usr/local/fsl/bin/dtifit --data=/home/fsl/TFM/images/2672-X2-DTIecc.nii.gz --out=/home/fsl/TFM/images/2672-X2-tensor --mask=/home/fsl/TFM/images/2672-X2-DTIecc_brain_mask.nii.gz --bvecs=/home/fsl/TFM/images/2672-X2-DTI.bvec --bvals=/home/fsl/TFM/images/2672-X2-DTI.bval
/usr/local/fsl/bin/eddy_correct /home/fsl/TFM/images/2672-X3-DTI.nii.gz /home/fsl/TFM/images/2672-X3-DTIecc 0
/usr/local/fsl/bin/bet /home/fsl/TFM/images/2672-X3-DTIecc /home/fsl/TFM/images/2672-X3-DTIecc_brain  -f 0.1 -g 0 -n -m
/usr/local/fsl/bin/dtifit --data=/home/fsl/TFM/images/2672-X3-DTIecc.nii.gz --out=/home/fsl/TFM/images/2672-X3-tensor --mask=/home/fsl/TFM/images/2672-X3-DTIecc_brain_mask.nii.gz --bvecs=/home/fsl/TFM/images/2672-X3-DTI.bvec --bvals=/home/fsl/TFM/images/2672-X3-DTI.bval
/usr/local/fsl/bin/eddy_correct /home/fsl/TFM/images/2672-X4-DTI.nii.gz /home/fsl/TFM/images/2672-X4-DTIecc 0
/usr/local/fsl/bin/bet /home/fsl/TFM/images/2672-X4-DTIecc /home/fsl/TFM/images/2672-X4-DTIecc_brain  -f 0.1 -g 0 -n -m
/usr/local/fsl/bin/dtifit --data=/home/fsl/TFM/images/2672-X4-DTIecc.nii.gz --out=/home/fsl/TFM/images/2672-X4-tensor --mask=/home/fsl/TFM/images/2672-X4-DTIecc_brain_mask.nii.gz --bvecs=/home/fsl/TFM/images/2672-X4-DTI.bvec --bvals=/home/fsl/TFM/images/2672-X4-DTI.bval
/usr/local/fsl/bin/eddy_correct /home/fsl/TFM/images/2672-X5-DTI.nii.gz /home/fsl/TFM/images/2672-X5-DTIecc 0
/usr/local/fsl/bin/bet /home/fsl/TFM/images/2672-X5-DTIecc /home/fsl/TFM/images/2672-X5-DTIecc_brain  -f 0.1 -g 0 -n -m
/usr/local/fsl/bin/dtifit --data=/home/fsl/TFM/images/2672-X5-DTIecc.nii.gz --out=/home/fsl/TFM/images/2672-X5-tensor --mask=/home/fsl/TFM/images/2672-X5-DTIecc_brain_mask.nii.gz --bvecs=/home/fsl/TFM/images/2672-X5-DTI.bvec --bvals=/home/fsl/TFM/images/2672-X5-DTI.bval
