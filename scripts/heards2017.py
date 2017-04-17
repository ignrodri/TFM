#!/usr/bin/python

import os
import os.path

str1 = ['2225', '2327', '2444', '2459', '2502', '2672']
str2 = ['X1', 'X2', 'X3', 'X4', 'X5']

fstop = '/home/ec2-user/TFM/images/stop'

for s1 in str1:
	for s2 in str2:
		fst = '/home/ec2-user/TFM/images/' + s1 + '-' + s2
		fmat = fst + '-DTI-0GenericAffine.mat'
		fwarp = fst + '-DTI-1InverseWarp.nii.gz'
		fmask = fst + '-T1masked.nii.gz'
		fdti = fst + '-DTIb0.nii.gz'
		ft1left = fst + '-T1hpleft.nii.gz'
		ft1right = fst + '-T1hpright.nii.gz'
		fdtileft = fst + '-DTIhpleft.nii.gz'
		fdtiright = fst + '-DTIhpright.nii.gz'
		freg = 'antsRegistrationSyNQuick.sh -d 3 -f ' + fmask + ' -m ' + fdti + ' -o ' + fst + '-DTI-'
		fleft = 'antsApplyTransforms -d 3 -i ' + ft1left + ' -o ' + fdtileft + ' -r ' + fdti + '-t [' + fmat + ',1] -t ' + fwarp
		fright = 'antsApplyTransforms -d 3 -i ' + ft1right + ' -o ' + fdtiright + ' -r ' + fdti + '-t [' + fmat + ',1] -t ' + fwarp
		
		if not os.path.isfile(fstop) and not os.path.isfile(fmat) and os.path.isfile(fmask) and os.path.isfile(fdti):
			os.system('touch ' + fst + 'mat.x')
			os.system('echo \"' + freg + '\"')
			os.system(freg)
		if not os.path.isfile(fstop) and not os.path.isfile(fdtileft) and os.path.isfile(ft1left) and os.path.isfile(fmat):
			os.system('touch ' + fst + 'left.x')
			os.system('echo \"' + fleft + '\"')
			os.system(fleft)
		if not os.path.isfile(fstop) and not os.path.isfile(fdtiright) and os.path.isfile(ft1right) and os.path.isfile(fmat):
			os.system('touch ' + fst + 'right.x')
			os.system('echo \"' + fright + '\"')
			os.system(fright)
