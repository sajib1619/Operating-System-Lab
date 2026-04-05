#!/bin/bash

WordSearch(){
    file1=$1
    word=$2
    return $(cat $file1 | grep -o $word | wc -l)
}

file_name="text.txt"
Word_name="Syed"

WordSearch $file_name $Word_name
echo -e "Word Count of name \"$Word_name\" from \"$file_name\" file is $?"
