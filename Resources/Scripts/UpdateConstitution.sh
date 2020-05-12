#!/bin/bash
# This script pulls down the latest versions of each section of the
# constitution from github, merges them with mdmerge, converts them to html
# with grip, and edits the html to include custom css, change the title, and
# edit the favicon.

git pull
mdmerge /var/www/IWW-Docs/Resources/Scripts/ConstitutionIndex.md -o /var/www/IWW-Docs/Constitution/fulltext.md
grip --export /var/www/IWW-Docs/Constitution/fulltext.md /var/www/IWW-Docs/Constitution/index.html
sed -i '/<head>/,/<\/head>/d' /var/www/IWW-Docs/Constitution/index.html
sed -i '/fulltext.md/d' /var/www/IWW-Docs/Constitution/index.html
sed -i '2a\<head>\n<meta charset="utf-8" />\n<title>IWW NARA Constitution</title>\n<link rel="stylesheet" type="text/css" href="../Resources/Styles/IWW-Docs.css">\n<link rel="shortcut icon" type="image/ico" href="../Resources/Images/favicon.ico"/>\n</head>' /var/www/IWW-Docs/Constitution/index.html
