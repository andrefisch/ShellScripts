echo "file is used to make multiple files in the format of name#.ext"
read -p "what would you like to name your files?: " name
read -p "how many files would you like to make?:  " max
read -p "what file extension would you like? don't use a dot (rb not .rb): " ext

for i in `seq 1 $max`
do
 touch "$name$i.$ext"
done

echo "created $max new files called $name#.$ext"
