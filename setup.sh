#!/bin/sh
# path to Madgraph model
#MODELPATH="/home/sdysch/Documents/Manchester/PostDoc/MG_models"
#export PYTHONPATH=$MODELPATH:$PYTHONPATH
#unset MODELPATH

if echo $HOSTNAME | grep lxplus > /dev/null; then
	alias runMG="/afs/cern.ch/work/s/sdysch/private/SSHiggs/MadGraphInstall/MG5_aMC_v3_1_1/bin/mg5_aMC"
	export LD_LIBRARY_PATH="/afs/cern.ch/work/s/sdysch/private/SSHiggs/MadGraphInstall/MG5_aMC_v3_1_1/HEPTools/lib":$LD_LIBRARY_PATH
	export PYTHONPATH="/afs/cern.ch/work/s/sdysch/private/SSHiggs/MadGraphInstall/MG5_aMC_v3_1_1/HEPTools/lib":$PYTHONPATH
	setupATLAS
	lsetup "python 3.7"
	lsetup git
else
	BASEPATH="/home/sdysch/Documents/Manchester/PostDoc/MadGraphInstall/MG5_aMC_v3_1_1/"

	# LHAPDF
	LHAPDF="${BASEPATH}/HEPTools/lhapdf6_py3/lib"
	export PYTHONPATH=$LHAPDF:$PYTHONPATH
	export LD_LIBRARY_PATH="${BASEPATH}/HEPTools/lhapdf6_py3/lib"

	unset LHAPDF
	unset BASEPATH
fi
