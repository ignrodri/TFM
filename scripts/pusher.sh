#!/bin/bash

mv -f /home/ec2-user/TFM/images/*.mat /home/ec2-user/xtfm/images
mv -f /home/ec2-user/TFM/images/*Warp.nii.gz /home/ec2-user/xtfm/images
mv -f /home/ec2-user/TFM/images/*Warped.nii.gz /home/ec2-user/xtfm/images
/bin/rm -f /home/ec2-user/TFM/images/stop
cd /home/ec2-user/TFM
git add --all .
git commit -m "commit"
git push
cp -f /home/ec2-user/xtfm/images/*.mat /home/ec2-user/TFM/images
cp -f /home/ec2-user/xtfm/images/*Warp.nii.gz /home/ec2-user/TFM/images
cp -f /home/ec2-user/xtfm/images/*Warped.nii.gz /home/ec2-user/TFM/images

