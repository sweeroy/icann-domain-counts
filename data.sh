read -p "Which TLD is this for? " input
read -p "From which year? " input2
echo ""

while [ $input2 -le 2019 ]
do
	echo $input2
	bash columns.sh $input $input2
	((input2=input2+1))
	echo ""
done
