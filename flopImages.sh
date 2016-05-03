mkdir -p flop
for OUTPUT in $(ls *.jpg)
do
	echo "Flopped $OUTPUT" 
        convert $OUTPUT -flop flop/flop$OUTPUT
done
