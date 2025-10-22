fruit=$1

case $fruit in
 apple)
   echo apple price is - 10rs
   ;;
 mango)
   echo mango price is - 20rs
   ;;
 *)
   echo fruit not found
esac

#we do not prefer case commadn because its limitattion only to the string and that why we use if command
#where is can perform conditions with file, sting, and numbers