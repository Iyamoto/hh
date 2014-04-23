
cut -d ":" -f 3 %base% > add.txt

gsort found.txt add.txt | uniq > tmp.txt 

cat tmp.txt | tr -d [:digit:] | sort | uniq > letters.txt

mv tmp.txt found.txt
