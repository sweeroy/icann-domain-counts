icann-TLD-reports
------------------
this is a tool that grabs information from the ICANN site and downloads it to the local machine. it pairs with the columns.sh script to display the outputs. when entering a TLD, make sure not to include the period, eg enter "biz" instead of ".biz"

the downloaded information is output into a folder in the same directory as the script. this is for housekeeping and also so that the data script can grab the information it needs, if you move the location of the folders you'll need to either update the data script or move it to the same location.

the tool works with all gtld's, but not cctlds as they are not listed by ICANN under the existing reporting models. 

acceptable:
	- biz
	- golf
	- club
	- com

not acceptable:
	- us
	- co
	- co.uk
	- tk

the script has an external source for its variables, primarily because the ICANN page was apparently set up in contradiction of what most people would consider to be a normal human mindset. rather than the tld being the title of the directory that the reports are kept in, the directories are in the following format - TLD-YYYY-MM-DD-en - where TLD is the tld that you're after, and the dates are a horrendous mistake. as a result rather than trying to programatically get these, i've just grabbed them as a list of variables that get called when you enter what TLD you're after. i'll need to make a tool that updates this list but for now i'm fine with this solution. the long term solution would be to get a sane person to define the locations in ICANN's repository.

the variables are stored in variables.sh

data
------------------
this is a tool that will take the downloaded files and grab the domain numbers. it'll count up from whatever is entered to 2019, as that's currently the oldest information that is available. it's a little clunkily made, but as it works i'm not too worried about it. it currently outputs using a comma as the delimiter, as that's the easiest way to move it into excel.
