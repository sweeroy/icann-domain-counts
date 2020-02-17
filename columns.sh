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


printf "January: %'.0f\n" $jan
printf "February: %'.0f\n" $feb
printf "March: %'.0f\n" $mar
printf "April: %'.0f\n" $apr
printf "May: %'.0f\n" $may
printf "June: %'.0f\n" $jun
printf "July: %'.0f\n" $jul
printf "August: %'.0f\n" $aug
printf "September: %'.0f\n" $sep
printf "October: %'.0f\n" $oct
printf "November: %'.0f\n" $nov
printf "December: %'.0f\n" $dec

