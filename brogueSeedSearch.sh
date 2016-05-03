count=0;
touch bestSeeds$count.brs;
perl c:/Users/anfis/OneDrive/Documents/Perl/brogueSeedCatalogSearch.pl $count;
cat bestSeeds$count.brs;

while true; do
    read -p "Search again? go back to Previous search? Look up a seed? Reset search? eXit? " splx
    case $splx in
        [Ss]* )
			count=$((count+1));
			touch bestSeeds$count.brs;
			perl c:/Users/anfis/OneDrive/Documents/Perl/brogueSeedCatalogSearch.pl $count;
			cat bestSeeds$count.brs;;
        [Pp]* )
            rm bestSeeds$count.brs;
			count=$((count-1));
			cat bestSeeds$count.brs;;
		[Ll]* ) perl c:/Users/anfis/OneDrive/Documents/Perl/brogueCatalogLookup.pl $count;;
		[Rr]* )
			count=0;
			rm *.brs;
			touch bestSeeds$count.brs;
			perl c:/Users/anfis/OneDrive/Documents/Perl/brogueSeedCatalogSearch.pl $count;
			cat bestSeeds$count.brs;;
		[Xx]* )
			rm *.brs;
			exit;;
        * ) echo "Please choose Search again, Previous search, Look up a seed, Reset search or eXit.";;
    esac
done
