icann-TLD-reports
------------------
this is a tool that grabs information from the ICANN site and downloads it to the local machine. it pairs with the columns.sh script to display the outputs.

the tool works with all gtld's, but not cctlds as they are not listed by ICANN under the existing reporting models. 

acceptable:
	- .biz
	- .golf
	- .club
	- .com

not acceptable:
	- .us
	- .co
	- .co.uk
	- .tk

the script has an external source for its variables, primarily because the ICANN page was apparently set up in contradiction of what most people would consider to be a normal human mindset. rather than the tld being the title of the directory that the reports are kept in, the directories are in the following format - TLD-YYYY-MM-DD-en - where TLD is the tld that you're after, and the dates are a horrendous mistake. as a result rather than trying to programatically get these, i've just grabbed them as a list of variables that get called when you enter what TLD you're after. i'll need to make a tool that updates this list but for now i'm fine with this solution. the long term solution would be to get a sane person to define the locations in ICANN's repository.

the variables are stored in variables.sh

columns
------------------
this is a tool that allows you to pull specific information from the ICANN reports that the primary script pulls. at the moment it's pretty basic but i'm intending to add some features soon

at the moment it will ask you for the TLD, and the year that you'd like to check. note that most tld's only have 3-4 years worth of data, so it's worth checking to see in your downloads what the actual years are. once you've entered this, it'll ask you what you want to use as the column. a list of what's available is included below

columns
	3 - total domains in zone
	4 - total nameservers
