project=Gene-MRI
========

$project will solve your problem of where to start with documentation,
by providing a basic explanation of how to do it easily.

Look how easy it is to use:

    import project
    # Get your stuff done
    project.do_stuff()

Features
--------

- Allen Gene Expression native format to NIFTI space
- Make things faster

Installation
------------

1. FSL: https://fsl.fmrib.ox.ac.uk/fsl/fslwiki/FslInstallation 
2. Add FSL path in your Linux/Mac/Virtual Machine awareness. 

How to do:
Open Terminal: 
> nano .bash_profile
--paste following in the end and save (ctrl + x , press Yes)-- 
FSLDIR=/usr/local/fsl
. ${FSLDIR}/etc/fslconf/fsl.sh
PATH=${FSLDIR}/bin:${PATH}
export FSLDIR PATH
--

3. AFNI: https://afni.nimh.nih.gov/pub/dist/HOWTO/howto/ht00_inst/html/
Follow the instructions and install. Add AFNI path also in .bashrc / .bash_profile 

4. Download the codes via github.com/$project

or git pull


Contribute
----------

- Issue Tracker: github.com/$project/$project/issues
- Source Code: github.com/$project/$project

Support
-------

If you are having issues, please let us know.
Prof. Dr. med. Thomas Nickl-Jockschat: tnickl-jockschat@ukaachen.de
Vinod Kumar: mail.vinod@yahoo.com

License
-------

The project is licensed under the BSD license.

Credits
-------
FSL, AFNI, NIFTI toolbox, Waxholm guys, Allen API, Allen Institute's wonderful database on genes and all the wonderful who directly indirectly contributed in this process. 