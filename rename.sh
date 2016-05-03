#!/bin/bash
read -p "What type of file would you like to rename? (Do not put the dot: ex: avi) " ext
ls *.$ext> fileList.txt
# how it works:
# following three arguments are passed to the perl script:
# - file extension of the extension to change
# - text file containing names of all files in the directory
# - text file containing names we want to change files to
perl c:/Users/Andrew/Documents/Perl/rename.pl $ext fileList.txt rename.txt
# we keep the list of old names in case something was screwed up
