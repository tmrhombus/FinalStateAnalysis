#!/bin/bash
# Runs and then dumps some pat info for Tyler

export varname="vendredi"

cmsRun ./PatTools/test/patTuple_cfg.py globalTag=$mcgt isMC=1 inputFiles=file:/nfs_scratch/truggles/CecileTest/pickevents_1_1_3Gd_SUSYBB_120GeV_285Events.root maxEvents=10 outputFile=$varname"_cecile_mvamet_test.root"

edmDumpEventContent $varname"_cecile_mvamet_test.root" > $varname"_cecile_mvamet_test.content"

./tyler_printMET.py  --inputPath=$varname"_cecile_mvamet_test.root" > $varname"_cecile_mvamet_test.mets"

