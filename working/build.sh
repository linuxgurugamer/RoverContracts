#!/bin/bash

template=RoverMissions.template
waypoint=waypoint.template
fname=RoverMissions.cfg

rm -f $fname
oIFS=$IFS
IFS=
while IFS=$'\n' read -r var ; do

	if [[ "$var" =~ "<OBJECTIVES>" ]]; then
		cnt=5
		IFS=$oIFS
		for i in `seq 1 $cnt`; do
			p=$((i-1))
#			if [ $p -gt 0 ]; then
#				prevparameter2="{"
#				prevparameter3="parameter = Location${p}AllResearch"
#				prevparameter4="}"
#			fi
			p=0
#			sed "s/<CNT>/$i/g" <$waypoint | sed "s/<PREVPARAMETER1>/$prevparameter1/g"  | sed "s/<PREVPARAMETER2>/$prevparameter2/g"  | sed "s/<PREVPARAMETER3>/$prevparameter3/g"  | sed "s/<PREVPARAMETER4>/$prevparameter4/g" | sed "s/<PREV>/$p/g"  >>$fname
			sed "s/<CNT>/$i/g" <$waypoint | sed "s/<PREV>/$p/g"  >>$fname
		done
		IFS=
	else
		echo $var >>$fname
	fi
done < $template
