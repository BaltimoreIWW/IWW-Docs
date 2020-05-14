#!/bin/bash
# This script pulls down the latest versions of each section of the
# Baltimore GMB Bylaws from github, merges them with mdmerge, converts them to html
# with grip, and edits the html to include custom css, change the title, and
# edit the favicon.
cd /var/www/IWW-Docs/Resources/Scripts

git pull
mdmerge BaltimoreGMBMPPIndex.md -o ../../BaltimoreGMB/MPP/fulltext.md
grip --export ../../BaltimoreGMB/MPP/fulltext.md ../../BaltimoreGMB/MPP/index.html
sed -i '/<head>/,/<\/head>/d' ../../BaltimoreGMB/MPP/index.html
sed -i '/fulltext.md/d' ../../BaltimoreGMB/MPP/index.html
sed -i '2a\<head>\n<meta charset="utf-8" />\n<title>Baltimore IWW GMB Manual of Policies and Procedures</title>\n<link rel="stylesheet" type="text/css" href="../../Resources/Styles/IWW-Docs.css">\n<link rel="shortcut icon" type="image/ico" href="../../Resources/Images/favicon.ico"/>\n</head>' ../../BaltimoreGMB/MPP/index.html
