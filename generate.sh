# this script was tested on Ubuntu on Windows

echo "Combining all lists into one"
cat ./lists/*.txt > sites-all.txt
echo "done"

cp sites-all.txt temp1.txt

echo "cleaning from empty lines"
sed '/^$/d' temp1.txt > temp2.txt

echo "now sorting and removing duplicated websites"
sort temp2.txt | uniq > temp3.txt

echo "removing www. from lists (if any) and then add copy of every website with www."
sed 's/^www\.\(.*\)$/\1/' temp3.txt > temp4.txt

echo "now add www. variation for every website"
sed 's/^\(.*\)$/\1\r\nwww\.\1/' temp4.txt > temp5.txt

echo "updating sites-all.txt with clean and sorted version"
rm sites-all.txt
cp temp5.txt sites-all.txt

echo "generating hosts.txt file for Windows"
rm hosts.txt
sed 's/^\(.*\)$/127.0.0.1 \1/' sites-all.txt > hosts.txt
sed -i '1 i\# copy the content of this file and paste at the the end of "c:\\windows\\system\\drivers\\etc\\hosts" file' hosts.txt

echo "final cleanup for temp files"
rm temp1.txt temp2.txt temp3.txt temp4.txt temp5.txt