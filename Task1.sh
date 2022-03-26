read -p "Enter the 1st Num : " a
read -p "Enter the 2nd Num : " b
read -p "Enter the 3rd Num : " c

op1=$((a+b*c));
op2=$((a*b+c));
op3=$((c+a/b));
op4=$((a%b+c));

echo "Printing calculated values..."
echo $op1
echo $op2
echo $op3
echo $op4

declare -A operation
operation[1]="$op1"
operation[2]="$op2"
operation[3]="$op3"
operation[4]="$op4"

echo "Printing Dictionary..."
echo ${operation[@]}

operations=(${operation[1]} ${operation[2]} ${operation[3]} ${operation[4]})

echo "Printing array..."
echo ${operations[@]}



for (( i=0; i<=3; i++ ))
do

	for (( j=$i; j<=3; j++ ))
	do
		if [ ${operations[$i]} -lt ${operations[$j]} ];
		then
			t=${operations[$i]}
			operations[$i]=${operations[$j]}
			operations[$j]=$t
		fi
	done
done

echo "Printing array in descending order..."
echo ${operations[@]}

for (( i=0; i<=3; i++ ))
do
	for (( j=$i; j<=3; j++ ))
	do
		if [ ${operations[$i]} -gt ${operations[$j]} ];
		then
			t=${operations[$i]}
			operations[$i]=${operations[$j]}
			operations[$j]=$t
		fi
	done
done

echo "Printing array in ascending order..."
echo ${operations[@]}

