<<<<<<< HEAD

cut -d ":" -f 3 %base% > add.txt

gsort found.txt add.txt | uniq > tmp.txt 

cat tmp.txt | tr -d [:digit:] | sort | uniq > letters.txt

mv tmp.txt found.txt
=======

cut -d ":" -f 3 %base% > add.txt

gsort found.txt add.txt | uniq > tmp.txt 

cat tmp.txt | tr -d [:digit:] | sort | uniq > letters.txt

mv tmp.txt found.txt
>>>>>>> e93e882c690dbf876415068b00949f6114bc81eb
