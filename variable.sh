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


#calling and sourcing the other scripts
script=$(realpath $0)
script_path=$(dirname "$script")
source ${script_path}/common.sh
echo ${script_path}
echo "0 = $0"
echo "realpath = $(realpath $0)"
echo "dirname = $(dirname $(realpath $0))"
echo user name=${app_user}
exit
