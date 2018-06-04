%% should be in the gene folder
%% mni.nii file should be also in

%% ENERGY
%	•	expression energy = expression intensity * expression density

% 200 micron volume size
sizeGrid = [67 41 58];
% ENERGY = 3-D matrix of expression energy grid volume
fid = fopen('energy.raw', 'r', 'l' );
ENERGY = fread( fid, prod(sizeGrid), 'float' );
fclose( fid );
ENERGY = reshape(ENERGY,sizeGrid);

% Display one coronal and one sagittal section
figure;imagesc(squeeze(ENERGY(24,:,:)));colormap(gray);
figure;imagesc(squeeze(ENERGY(:,:,28)));colormap(gray);
out = MRIread('mni.nii'); % read the Nifti file  
outVolume = out.vol; % The 3D/4D (MRI/fMRI) volume data 

% outVolume --> newValueVolume is the volume of the new value we want to write to the Nifti file
% we put it back to the vol attribute   
out.vol = ENERGY;

% write to a nifti file
err = MRIwrite(out,'energy.nii','double');
