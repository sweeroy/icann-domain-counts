## this is a program that downloads reports for a specified TLD from the ICANN site.
## this variable is for the temp directory. assigns a random number that will be used as the directory name
rand=$RANDOM

## get user input. tput colours the text, sgr0 removes all formatting
tput setaf 3; echo "This is a tool to download reports from the ICANN website for various TLD's. If you are looking to get data from the reports, run the data.sh script"
tput sgr0
read -p "Please enter the TLD which you would like to download the reports for: " input

## generates a folder that uses the tld that has been input. all documents will be placed into there
mkdir $input

## outputs some data to temp so that this document isn't gigantic. variables.sh is a list of all the locations of the ICANN reports as of 23/01/20 and because they're idiotically named there's no way to programatically pull them off the ICANN site. the script writes to the temp file, then executes it
echo "" > temp
echo "source variables.sh" >>temp
echo "wget -r -A.csv -P"$input" https://www.$"$input >> temp
bash temp

## generates the temp folder. this lets us easily kill the filestructure of the old folder, which is still in the form of a web directory. keeps the csv's and nukes the rest
mkdir $rand
cp $input/www.icann.org/sites/default/files/mrr/$input/* $rand/
rm -r $input/

## remakes the directory, and moves the csv's into it
mkdir $input
cp $rand/* $input/

## kills the temp file and the temp directory
rm -r $rand
rm temp
