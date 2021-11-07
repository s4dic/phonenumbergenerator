#!/bin/bash

#Change this code:
numberstartcode=06

#Init to 00000000
num1=00;num2=00;num3=00;num4=00
seq1=00;seq2=00; seq3=00;seq4=00

while [[ true ]]; do
	echo "$numberstartcode""$seq1""$seq2""$seq3""$seq4"

	#Generate phone number
	if [[ "$num1" != "99" ]]; then
		((num1++))
	else
		num1=00; ((num2++))
	fi

	if [[ "$num2" -eq "100" ]]; then
		num1=00;num2=00;((num3++))
	fi

	if [[ "$num3" -eq "100" ]]; then
		num1=00;num2=00;num3=00;((num4++))
	fi

	#Change "0" to "00", or "1" to "01"
	if [[ "$num4" -eq "100" ]]; then
		exit 0
	fi
	if [[ "$num1" -lt "10" ]] && [[ "$num1" != "00" ]]; then
		seq1="0$num1"
	else
		seq1="$num1"
	fi
	if [[ "$num2" -lt "10" ]] && [[ "$num2" != "00" ]]; then
		seq2="0$num2"
	else
		seq2="$num2"
	fi
	if [[ "$num3" -lt "10" ]] && [[ "$num3" != "00" ]]; then
		seq3="0$num3"
	else
		seq3="$num3"
	fi
	if [[ "$num4" -lt "10" ]] && [[ "$num4" != "00" ]]; then
		seq4="0$num4"
	else
		seq4="$num4"
	fi
done
