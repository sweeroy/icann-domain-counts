echo ""
tput setaf 2;
echo "This is a tool that will display information downloaded from the ICANN TLD reports. In order to download the actual data, use the icann-tld-reports.sh script. Please note that it can only download what is listed on the ICANN site itself, which does not include ccTLD's. "
echo ""
echo "Please also note that for the majority of domains, reporting only began ~5 years ago. While you can return values longer than this period of time, it'll likely be entirely empty. "
echo ""
tput sgr0
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
