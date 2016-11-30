#!/bin/bash

# Set directory containing MELODIC outputs
output_dir=MELODIC_OUTPUT_DIR

# Set name location of ICA classifiers
classifier_dir=CLASSIFIERS_DIR
classifier_name=CLASSIFIER_NAME

# Set location of FIX installation
fix_dir=FIX_INSTALLATION_DIRECTORY

# Classify and clean data
threshold=10

# Subject info
subject=001
run=1

# Run classifier (classify components into signal and noise)
${fix_dir}fix -c ${output_dir}${subject}/run${run}_melodic.ica ${classifier_dir}${classifier_name} ${threshold}

# Apply cleanup (remove noise components)
${fix_dir}fix -a ${output_dir}${subject}/run${run}_melodic.ica/fix4melview_${classifier_name}_thr${threshold}.txt
