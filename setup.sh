#!/bin/sh
# path to Madgraph model
#MODELPATH="/home/sdysch/Documents/Manchester/PostDoc/MG_models"
#export PYTHONPATH=$MODELPATH:$PYTHONPATH
#unset MODELPATH

BASEPATH="/home/sdysch/Documents/Manchester/PostDoc/MadGraphInstall/MG5_aMC_v3_1_1/"

# LHAPDF
LHAPDF="${BASEPATH}/HEPTools/lhapdf6_py3/lib"
export PYTHONPATH=$LHAPDF:$PYTHONPATH
export LD_LIBRARY_PATH="${BASEPATH}/HEPTools/lhapdf6_py3/lib"

unset LHAPDF
unset BASEPATH
