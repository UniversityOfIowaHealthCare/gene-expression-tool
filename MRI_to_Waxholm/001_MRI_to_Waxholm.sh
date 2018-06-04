#1. Conversion of data format: 
usually high-resolution mouse structural and diffusion scanner is acquired using Brucker or varian scanner, and depending on the scanner, you have a specific output format. 
This format can be converted using AFNI tool (to3d) https://afni.nimh.nih.gov/pub/dist/doc/program_help/to3d.html

Some People are not acquainted with the command line utilities. for them, easiest way for data conversion can be performed using "MRIstudio" https://www.mristudio.org/wiki/installation
In this software you can open the native scanner format, and then save it in NIFTI format (https://nifti.nimh.nih.gov/nifti-1).

2.  Visulize your structural and functional data and insure, you have good quality dataset and the data format conversion worked. 

3. The T1 contrast structural image would be input of the script 002_structure_2_waxholm.sh

4. The resulted transformation matrix can be applied to structural spaced diffusion data or any region of interest aligned to the structural space. 
   Here you can perfrom a simple linear transformation from your diffusion b0 image to similar mouse's structural space, and thus you can transfer your diffusion analysis results into structural space easily. 
   This can be achieved using FSL-Flirt.  See 003_regions_2_waxholm.sh


