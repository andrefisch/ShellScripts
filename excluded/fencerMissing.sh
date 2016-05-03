# how to use: copy the entirety of seeding with all the fencers into seeding.txt
# then copy entirety of final results including the line with fencer excluded
# into the file called fencers. then run the script

# remove first column, places or seeds etc
# sed 's/^[0-9]*T\?\s*//' results.txt > results2.exc
# sed 's/^[0-9]*T\?\s*//' seeding.txt > seeding2.exc

# remove all columns after names of fencers
# sed 's/\([-\sA-Z]*,\s[A-Z][a-z]*\).*/\1/' results2.exc > results3.exc
# sed 's/\([-\sA-Z]*,\s[A-Z][a-z]*\).*/\1/' seeding2.exc > seeding3.exc

awk 'BEGIN { FS="\t" } {print $2}' results.txt | sort > results4.exc
awk 'BEGIN { FS="\t" } {print $2}' seeding.txt | sort > seeding4.exc

# here are the results
diff results4.exc seeding4.exc

# clean up the exc files
rm *exc
