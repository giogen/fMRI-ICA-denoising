# fMRI-ICA-denoising
This repository contains links to two ICA classifiers that can be used to remove noise components from task-based functional magnetic resonance imaging data. The classifiers are based on fMRI data collected at the California Institute of Technology in collaboration with Wolfgang Pauli, Jeff Cockburn, and Gabriela Tavares, and they were trained using the FSL toolbox FIX (https://fsl.fmrib.ox.ac.uk/fsl/fslwiki/FIX).

1. Classifier FIX_ICA_clean_taskbased_TR_2_8_3mm: task-based fMRI data with TR=2.8 seconds, voxel size=3mm x 3mm x 3mm
2. Classifier FIX_ICA_clean_taskbased_TR_1_2_5mm: task-based fMRI data with TR=1 second, voxel size=2.5mm x 2.5mm x 2.5mm

The classifiers operate on the output of the FSL ICA decomposition routine MELODIC (https://fsl.fmrib.ox.ac.uk/fsl/fslwiki/MELODIC) and return 4D fMRI data with the noise components removed (as labeled by the classifiers).

The training dataset for each classifier (available upon request) consisted of over 100 manually labeled sessions of task-based fMRI data.

The repository also contains a sample bash script used to classify and remove "bad" ICA components from the data.
