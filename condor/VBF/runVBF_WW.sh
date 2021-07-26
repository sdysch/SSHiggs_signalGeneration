#!/bin/sh

# setup the environment
export ATLAS_LOCAL_ROOT_BASE=/cvmfs/atlas.cern.ch/repo/ATLASLocalRootBase
source ${ATLAS_LOCAL_ROOT_BASE}/user/atlasLocalSetup.sh
lsetup "python 3.7"

alias runMG="/afs/cern.ch/work/s/sdysch/private/SSHiggs/MadGraphInstall/MG5_aMC_v3_1_1/bin/mg5_aMC"
export LD_LIBRARY_PATH="/afs/cern.ch/work/s/sdysch/private/SSHiggs/MadGraphInstall/MG5_aMC_v3_1_1/HEPTools/lib":$LD_LIBRARY_PATH
export PYTHONPATH="/afs/cern.ch/work/s/sdysch/private/SSHiggs/MadGraphInstall/MG5_aMC_v3_1_1/HEPTools/lib":$PYTHONPATH

cd /afs/cern.ch/work/s/sdysch/private/SSHiggs/SSHiggs_signalGeneration/
runMG cards/ssHiggs/VBF/WW/ll_eemumu.txt
