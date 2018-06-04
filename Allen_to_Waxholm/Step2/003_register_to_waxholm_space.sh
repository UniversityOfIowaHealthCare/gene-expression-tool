## Insure that you have converted gene expresssion map in nifti format in the current directory
## Please read README.md , for required FSL and AFNI installation


########### ORIENTATION #########

echo “Modifying the NIFTI header and changing orientation to SAR“
echo “Input file name is energy.nii, if something else, then change the script“

3dinfo energy.nii
3dcopy energy.nii ener
3drefit -xdel 0.2 -ydel 0.2 -zdel 0.2 -orient SAR ener+orig

#afni ener+orig
3dinfo ener+orig

3dcopy ener+orig ener.nii

echo “displaying changed orientation on the template orientation map“

fslview template1_gene_200_mricron_orientation.nii ener.nii 


########### REGISTER 1 #########

echo “200 Mricron to 25 Mricron Space conversion“

flirt -in ener.nii -applyxfm -init allen200micron_2_25micron.mat -out ener_w25.nii -paddingsize 0.0 -interp trilinear -ref w25.nii


echo “Displaying 25 micron reference annotation and converted gene map in 25 micron resolution“

fslview w25.nii ener_w25.nii


########### REGISTER 2 #########
echo “Register 25 micron allen nissels to 25 micron gray Space“

flirt -in ener_w25.nii.gz -applyxfm -init grey_w25.mat -out ener_grey_w25.nii -paddingsize 0.0 -interp trilinear -ref volume_grey.nii.gz

echo “Display Nissel registered on the gray space ALLEN“
fslview volume_grey.nii.gz ener_grey_w25.nii.gz &


########### REGISTER 3 #########

echo “Registering volumegrey to waxholm“


flirt -in ener_grey_w25.nii.gz -applyxfm -init volume_grey_to_waxt2w.mat -out ener_wax_grey_w25.nii -paddingsize 0.0 -interp trilinear -ref canon_T2W_r.nii


fslview canon_T2W_r.nii