Hn=0;
Tn=0;

while ((  "$Hn" != 21  &&  "$Tn" != 21  ))
do
	flipCoin=$((RANDOM%2));
	if [ $flipCoin -eq 0 ];
	then
		echo "Heads"
		Hn=$(($Hn+1));
	else
		echo "Tails"
		Tn=$(($Tn+1));
	fi


done

echo "Hn is $Hn"
echo "Tn is $Tn"



if [ $Hn -gt $Tn ];
then
	Wonby=$(($Hn-$Tn));
	echo "Heads won by : $wonby"
else

	wonby=$(($Tn-$Hn));
	echo "Tails won by : $wonby"
fi


