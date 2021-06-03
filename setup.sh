#!/bin/sh
command -v setupATLAS > /dev/null || ( export ATLAS_LOCAL_ROOT_BASE=/cvmfs/atlas.cern.ch/repo/ATLASLocalRootBase \
&& alias setupATLAS='source ${ATLAS_LOCAL_ROOT_BASE}/user/atlasLocalSetup.sh')
setupATLAS

lsetup git
asetup --restore

# path to Madgraph model
MODELPATH="/afs/cern.ch/user/s/sdysch/private/MadGraph_models/MLRSM/MLRSM_1-1-5/"
export PYTHONPATH=$MODELPATH

unset MODELPATH
