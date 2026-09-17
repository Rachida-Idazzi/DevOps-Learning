#!/bin/bash

#Creates a directory called Arena_Boss.
mkdir -p Arena_Boss

#Generate a random number of lines (between 10 and 20) in each file.


#Creates 5 text files inside the directory, named file1.txt to file5.txt.

victory_file=$((1 + $RANDOM % 5))

for n in {1..5}; do
    line=$((10 + $RANDOM % 11))

    for ((i=1; i<=$line; i++)); do
        echo "This is line $i" >> Arena_Boss/file${n}.txt
    done

    #Write the word 'Victory' to one random file 
    if [ "$n" -eq "$victory_file" ]; then
         echo "Victory" >> Arena_Boss/file${n}.txt
    fi

done


#Sorts these files by their size and displays the list.

find "Arena_Boss" -type f -name "*.txt" -exec ls -l {} + | sort -k 5,5 | awk '{print $5, $9}'

#Checks if any of the files contain the word 'Victory'
#If found, move the file to a directory called Victory_Archive.


mkdir -p Victory_Archive
grep -l -i "Victory" Arena_Boss/*.txt | while read f; do mv "$f" Victory_Archive; echo "Files '$f' with the word 'Victory' have been found and moved to 'Victory_Archive'"; done





