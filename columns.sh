TLD=$1
year=$2
echo ""
echo ""
dec=$(cat $TLD/$TLD"-transactions-"$year"12-en.csv" 2>/dev/null | cut -d ',' -f3 | sed '$!d') 
nov=$(cat $TLD/$TLD"-transactions-"$year"11-en.csv" 2>/dev/null | cut -d ',' -f3 | sed '$!d') 
oct=$(cat $TLD/$TLD"-transactions-"$year"10-en.csv" 2>/dev/null | cut -d ',' -f3 | sed '$!d')
sep=$(cat $TLD/$TLD"-transactions-"$year"09-en.csv" 2>/dev/null | cut -d ',' -f3 | sed '$!d')
aug=$(cat $TLD/$TLD"-transactions-"$year"08-en.csv" 2>/dev/null | cut -d ',' -f3 | sed '$!d')
jul=$(cat $TLD/$TLD"-transactions-"$year"07-en.csv" 2>/dev/null | cut -d ',' -f3 | sed '$!d')
jun=$(cat $TLD/$TLD"-transactions-"$year"06-en.csv" 2>/dev/null | cut -d ',' -f3 | sed '$!d')
may=$(cat $TLD/$TLD"-transactions-"$year"05-en.csv" 2>/dev/null | cut -d ',' -f3 | sed '$!d')
apr=$(cat $TLD/$TLD"-transactions-"$year"04-en.csv" 2>/dev/null | cut -d ',' -f3 | sed '$!d')
mar=$(cat $TLD/$TLD"-transactions-"$year"03-en.csv" 2>/dev/null | cut -d ',' -f3 | sed '$!d')
feb=$(cat $TLD/$TLD"-transactions-"$year"02-en.csv" 2>/dev/null | cut -d ',' -f3 | sed '$!d')
jan=$(cat $TLD/$TLD"-transactions-"$year"01-en.csv" 2>/dev/null | cut -d ',' -f3 | sed '$!d')

echo "December, " $dec
echo "November, " $nov
echo "October, " $oct
echo "September, " $sep
echo "August, " $aug
echo "July, " $jul
echo "June, " $jun
echo "May, " $may
echo "April, " $apr
echo "March, " $mar
echo "February, "$feb
echo "January, "$jan
