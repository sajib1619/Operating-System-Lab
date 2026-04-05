#!/bin/bash

#print statement-----
#echo "hello world"
#echo -e "sajib\nhasan"

#system defined variable-----
#echo  "$PWD"
#echo "$HOME"


#user Defined Variabbles------
#var1=10
#var2=3.95
#var3="Sakib Rahman"
#echo "$var1, $var2, $var3"


#User Input-------
#read name
#echo $name
#echo "The user name is $name."
#read -p "Enter your id : " id
#echo "$name's id is : $id"
#read -sp "Enter your Password: " pass
#echo $pass


#Arrays---------
#read -a names
#echo ${#names[@]}  #----syntax to get arrays length
#echo "${names[0]}, ${names[1]}, ${names[2]}"


#Arithmetic Operations---------
#var1=40
#var2=20
#var3=$((var1/var2))
#echo "The Division of $var1 and $var2 is $var3"


#Conditional Statements-----------
#read -p "Enter a number: " num
#if (( $num > 10 ))
#then 
#	echo "The number is greater than 10"
#elif (( $num == 10 ))
#then
#	echo "The number is equal to 10"
#else
#	echo "The number is less than 10"
#fi


#file save--------
#a=10
#b=20
#c=$((a+b))
#echo $c >> result.txt	# >> means append, > means overwrite
#file1="result.txt"
#if [ -f "$file1" ]
#then 
#	echo "file Exits"
#	echo $c >> result.txt
#else
#	echo "file doesn't exist"
#	touch "$file1"	
#	echo $c >> "$file1"
#fi


#for loop------------
#for (( i=1; i<=10; i++ ))
#do
#	echo -n "$i "
#done
#echo ""

#name=(1 2 3)
#len=${#name[@]}
#echo $len
#result=0
#for ((i=0; i<len; i++))
#do
#	echo ${name[i]}
#done
#echo $result

#for i in "${name[@]}"
#do
#	result = $((result+i))
#done
#echo $reslt

#text="Hi My name is Syad. I live in Savar. Syed, Syed, Syed, Syed"
#echo -e $text | grep -o "Syed"
#echo -e $text | grep -o "Syed" | wc -l 		#counting a specific word


#function-----------------
#iseven() {
#	if [ $(($1 % 2)) == 0 ]
#	then return 0
#	else return 1
#	fi
#}

#iseven 10
#echo $?

#print(){
#	echo "hello"
#}
#print

#arr=(10 20 30)

#sumArray(){
#	local sum=0;
#	arr=("$@")
#	for i in "${arr[@]}"
#	do
#		sum=$((sum+i))
#		echo $i
#	done
#	return $sum
#}

#sumArray(){
#	local sum=0;
#	arr=("$@")
#	for (( i=0; i<${#arr[@]}; i++ ))
#	do
#		sum=$((sum+arr[i]))
#	done
#	return $sum
#}

#ar=(20 30 40)
#sumArray "${ar[@]}"
#echo $?

#echo -e | cat text.txt | grep -o "Syed" | wc -l
