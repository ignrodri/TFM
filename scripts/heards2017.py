#!/usr/bin/python

import os
import os.path

str1 = ['2225', '2327', '2444', '2459', '2502', '2672']
str2 = ['X1', 'X2', 'X3', 'X4', 'X5']

for s1 in str1:
	for s2 in str2:
		fst = '/home/ec2-user/xtfm/images/' + s1 + '-' + s2
		fmat = fst + '-DTI-0GenericAffine.mat'
		fwarp = fst + '-DTI-1InverseWarp.nii.gz'
		fmask = fst + '-T1masked.nii.gz'
		fdti = fst + '-DTIb0.nii.gz'
		ft1left = fst + '-T1hpleft.nii.gz'
		ft1right = fst + '-T1hright.nii.gz'
		fdtileft = fst + '-DTIhpleft.nii.gz'
		fdtiright = fst + '-DTIhright.nii.gz'
		
		if not os.path.isfile(fmat) and os.path.isfile(fmask) and os.path.isfile(fdti):
			os.system('antsRegistrationSyNQuick.sh -d 3 -f ' + fmask + ' -m ' + fdti + ' -o ' + fst + '-DTI-')
		if not os.path.isfile(fdtileft) and os.path.isfile(ft1left) and os.path.isfile(fmat):
			os.system('antsApplyTransforms -d 3 -i ' + ft1left + ' -o ' + fdtileft + ' -r ' + fdti + '-t [' + fmat + ',1] -t ' + fwarp)
		if not os.path.isfile(fdtiright) and os.path.isfile(ft1right) and os.path.isfile(fmat):
			os.system('antsApplyTransforms -d 3 -i ' + ft1right + ' -o ' + fdtiright + ' -r ' + fdti + '-t [' + fmat + ',1] -t ' + fwarp)