#!/bin/bash

# creates a file called gitChanges.txt which will store output of git status
# touch gitChanges.txt
git status > gitChanges.txt

if [ -s gitChanges.txt ]
	then 
	  # run the perl script to find all files with specified extension
	  perl c:/users/andrew/documents/perl/gitAddHelper.pl

	  # since the perl script creates an output file with all items to be added as a command
	  gvim gitSubmit.txt

	  # clean up a little bit by removing all vim edit files (files ending in ~) and
	  # and all log files ending in a hash code
	  # also remove the two text files we created
	  rm gitChanges.txt
	  rm gitSubmit.txt

	  # prints all files that end in a ~ (vim edit files)
	  # NOT IMPLEMENTED YET

	  find . -maxdepth 2 -name "*.*~" -type f
	  
	  while true; do
   	      read -p "Do you wish to delete the files above?" yn
	      case $yn in
	          [Yy]* ) find . -maxdepth 2 -name "*.*~" -type f -delete; break;;
        	  [Nn]* ) exit;;
	          * ) echo "Please answer yes or no.";;
	      esac
	  done
	  
	else
	  rm gitChanges.txt
fi
