#!/bin/bash
# This script pulls down the latest versions of each section of the
# constitution from github, merges them with mdmerge, converts them to html
# with grip, and edits the html to include custom css, change the title, and
# edit the favicon.

git pull
