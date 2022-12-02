#!/bin/bash



declare -A coin
head=0;
tail=0;
i=1;

while (( tail<21 && head<21 ))
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
	H=$(( $head-$tail ));
	echo "Heads is winner and win by $H times";

elif [[ $tail -gt $head ]]
then
	T=$(( $tail-$head ));
	echo "Tails is winner and win by $T times";

else
	echo "The coin flipped and Both Win equal times"; 
fi
