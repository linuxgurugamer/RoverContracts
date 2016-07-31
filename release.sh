#!/bin/bash

#if [[ "$OSTYPE" == "linux-gnu" ]]; then
#	os=linux
#elif [[ "$OSTYPE" == "darwin"* ]]; then
#	os=osx
#elif [[ "$OSTYPE" == "cygwin" || "$OSTYPE" == "msys" ]]; then
#        # POSIX compatibility layer and Linux environment emulation for Windows
#		os=cygwin
#	else
#		exit
#fi
#
#echo -e "\n\n"
#if [ "$os" != "cygwin" ]; then
#	root=$HOME
#else
#	root="/cygdrive/d/users/jbb"
#fi

root=/d/Users/jbb
releasedir=${root}/release
installdir=${root}/install
mkdir -p $releasedir

cat rovercontracts.version
echo "Enter version: "
read version

cd $installdir
rm -f $releasedir/RoverContracts-${version}.zip
zip -9r $releasedir/RoverContracts-${version}.zip GameData/ContractPacks/Spacetux/RoverMissions GameData/spacetux

