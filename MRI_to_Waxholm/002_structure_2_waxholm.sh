f=555_thr1200.nii.gz
## Filename, give your structural image
echo "Registering to waxhom space"
flirt -in $f -ref canon_T1_r.nii.gz -out a555_flirt1.nii -omat a555_flirt1.mat -bins 256 -cost corratio -searchrx -180 180 -searchry -180 180 -searchrz -180 180 -dof 12  -interp trilinear


flirt -in a555_flirt1 -ref canon_T1_r.nii.gz -out a555_flirt2.nii -omat a555_flirt2.mat -bins 256 -cost corratio -searchrx -180 180 -searchry -180 180 -searchrz -180 180 -dof 12  -interp trilinear


