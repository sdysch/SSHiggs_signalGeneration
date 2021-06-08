#!/bin/sh
# path to Madgraph model
#MODELPATH="/home/sdysch/Documents/Manchester/PostDoc/MG_models"
#export PYTHONPATH=$MODELPATH:$PYTHONPATH
#unset MODELPATH
LHAPDF="/home/sdysch/Documents/Manchester/PostDoc/MadGraphInstall/MG5_aMC_v3_1_1/HEPTools/lhapdf6_py3/lib"
export PYTHONPATH=$LHAPDF:$PYTHONPATH
unset LHAPDF
