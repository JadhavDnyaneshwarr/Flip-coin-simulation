#!/bin/bash



declare -A coin
head=0;
tail=0;
i=1;

while (( tail<34 && head<34 ))
do
	flipcoin=$(( RANDOM%2 ));
	coin[$i]=$flipcoin;
	((i++));
	case $flipcoin in
		1)
			((head++))
		;;
		*)
			((tail++))
		;;
	esac

done

if [[ $head -gt $tail ]]
then
	echo "Heads is winner for: $head";
else
	echo "Tails is winner for: $tail";
fi
