AutoPull
========

My small hack to pull/deploy on a server whenever there is a commit to a github repo.

Requirements:
Your web server needs to have enough permissions to write and read the folder where the flag is being put
Your web server needs permissions to call git
You need to have git installed on your server

Tested and developed for Unix based system, probably possible to mod it to work on Windows Server.

Tested on:
	Ubuntu Server (dedicated and EC2)
	Fedora (dedicated)
	RHEL (dedicated)
	Amazon EC2 EMI
	Mac OS X Server

This script/hack is great for when u want your every web app git commit to be reflected on your development web server

In order to set it up, edit both fetch.sh and gpull.php,
change <yourAppName> to your app name (also feel free to edit paths to wherever you keep your stuff, just make sure that the webserver acc (apache/apache2/www) can write there)
put the fetch.sh anywhere where your server can execute it and your gpull.php needs to be somewhere publically accessible (like your webapp root).

Now that the system is in place, add a chron job to run the fetch.sh every n minutes (decide how often you want to run it, I had it set to 10 minutes in my projects, but it's a personal preference).

Once you have set up everything else you need to go into your GitHub repo settings and add a custom hook, and point it to your gpull.php, and voila. Next time you commit, in n defined minutes the chron will run the shell script and the git will pull the commit to the development server.