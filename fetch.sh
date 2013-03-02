#!/bin/bash
if [ -f /var/www/html/git-pull-requests/<yourAppName> ]
then
rm -f /var/www/html/git-pull-requests/<yourAppName> ]
cd /var/www/html/<yourAppName> && git pull
fi
