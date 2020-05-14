#!/bin/bash
# This script pulls down the latest versions of each section of the
# constitution from github, merges them with mdmerge, converts them to html
# with grip, and edits the html to include custom css, change the title, and
# edit the favicon.
cd /var/www/IWW-Docs/Resources/Scripts


git pull
mdmerge NARAConstitutionIndex.md -o ../../NARA/Constitution/fulltext.md
grip --export ../../NARA/Constitution/fulltext.md ../../NARA/Constitution/index.html
sed -i '/<head>/,/<\/head>/d' ../../NARA/Constitution/index.html
sed -i '/fulltext.md/d' ../../NARA/Constitution/index.html
sed -i '2a\<head>\n<meta charset="utf-8" />\n<title>IWW NARA Constitution</title>\n<link rel="stylesheet" type="text/css" href="../../Resources/Styles/IWW-Docs.css">\n<link rel="shortcut icon" type="image/ico" href="../../Resources/Images/favicon.ico"/>\n</head>' ../../NARA/Constitution/index.html
