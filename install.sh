#!/bin/bash

INSTALLDIR=D:/Users/jbb/install/GameData/ContractPacks/Spacetux/RoverMissions
OBJS="license.txt README.md rovercontracts.version RoverDeploy.cfg iteratorRover.cfg group.cfg"

rm -fr $INSTALLDIR

[ ! -d $INSTALLDIR ] && mkdir $INSTALLDIR
cp $OBJS $INSTALLDIR

#cd ~/github/SpaceTux/GameData/spacetux && make install
