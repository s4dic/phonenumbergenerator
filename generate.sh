#!/bin/bash

countrycode=06
num1=00;num2=00;num3=00;num4=00
seq1=00;seq2=00; seq3=00;seq4=00;

for (( num1 = 00; num1 < 100; num1++ )); do
	#SEQ N°1
	if [[ "$num1" -lt "11" ]]; then
		if [[ "$num1" -lt "10" ]]; then
			seq1="0$num1"
		fi
	fi
	if [[ "$num1" -gt "9" ]]; then
			seq1=`echo $num1`
	fi
	
	#SEQ N°2
	if [[ $num1 == "99" ]]; then
		num1=00
		if [[ "$num2" -lt "100" && "$num2" != "99" ]]; then
			((num2++))
		fi
		if [[ "$num2" -lt "10" ]]; then
			seq2="0$num2"
		else
			seq2="$num2"
		fi
	fi

	#SEQ N°3
	if [[ "$seq1$seq2" == "9999" ]]; then
		num1=00;num2=00;
		if [[ "$num3" -lt "100" && "$num3" != "99" ]]; then
			((num3++))
		fi
		if [[ "$num3" -lt "10" ]]; then
			seq3="0$num3"
		else
			seq3="$num3"
		fi
	fi

	#SEQ N°4
	if [[ "$seq1$seq2$seq3" == "999999" ]]; then
		num1=00;num2=00;num3=00;
		if [[ "$num4" -lt "100" && "$num4" != "99" ]]; then
			((num4++))
		fi
		if [[ "$num4" -lt "10" ]]; then
			seq4="0$num4"
		else
			seq4="$num4"
		fi
	fi

	echo "$countrycode""$seq1""$seq2""$seq3""$seq4"
	if [[ "$seq1$seq2$seq3$seq4" == "99999999" ]]; then
		exit 0
	fi
done
