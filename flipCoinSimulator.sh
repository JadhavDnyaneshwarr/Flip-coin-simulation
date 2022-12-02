#!/bin/bash

flipcoin=$(( RANDOM%2 ));

if [[ $flipcoin -eq 0 ]]
then
	echo "Heads is winner";
else
	echo "Tails is winner";
fi
