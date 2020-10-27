cat ./lists/*.txt > sites-all.txt

cp sites-all.txt temp1.txt

# clean from empty lines
sed '/^$/d' temp1.txt > temp2.txt

# now sort and remove duplicated lines
sort temp2.txt | uniq > temp3.txt

# removing www. from lists (if any) and then add copy of every website with www.
sed 's/^www\.\(.*\)$/\1/' temp3.txt > temp4.txt

# now add www. variation for every website
sed 's/^\(.*\)$/\1\r\nwww\.\1/' temp4.txt > temp5.txt


# updating sites-all.txt with clean and sorted version
rm sites-all.txt
cp temp5.txt sites-all.txt

# generate hosts file for Windows
rm hosts.txt
sed 's/^\(.*\)$/127.0.0.1 \1/' sites-all.txt > hosts.txt

# cleanup

rm temp1.txt temp2.txt temp3.txt temp4.txt temp5.txt