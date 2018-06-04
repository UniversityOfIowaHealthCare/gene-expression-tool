# Diffusion space to structural space registration
source=diffusion_b0.nii.gz  # name of b0 image
target=555_thr1200.nii.gz   # name of the structural image

flirt -in $source -ref $target -out b0_str.nii -omat b0_str.mat -bins 256 -cost corratio -searchrx -180 180 -searchry -180 180 -searchrz -180 180 -dof 12  -interp trilinear



# ROIs from Diffusion to structural space 
v=region.nii.gz # Diffusion spaced regions
flirt -in $v -applyxfm -init b0_str.mat -out "${v}"_str -paddingsize 0.0 -interp trilinear -ref $target



# Structural spaced ROIs to Waxholm space: 
f=tbss_result.nii.gz   # give file name (Diffusion results in structural space)

flirt -in $f -applyxfm -init flirt1.mat -out "${f}"_1 -paddingsize 0.0 -interp trilinear -ref canon_T1_r.nii.gz

flirt -in "${y}"_1 -applyxfm -init flirt2.mat -out "${y}"_2 -paddingsize 0.0 -interp trilinear -ref canon_T1_r.nii.gz