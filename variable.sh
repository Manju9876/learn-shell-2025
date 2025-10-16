a=10
name=Manju

echo a = ${a}
echo  My name is = ${name}

#variable to write a command
date=$(date +%F)
echo today the date ${date}

#variable to write some arthemetic logic
maths=$((2+4-1))
echo solution $maths

# speacial variable to call
echo script name $0
echo first argument - $1
echo second argument - $2
echo all argument - $*
echo numbebr of arguments - $#
