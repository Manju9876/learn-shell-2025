fruit_name=mango
quantity=100

if [ $fruit_name = "mango" ]
then
  echo the quantity is $quantity
fi

# example for if else

name=$1
age=$2

if [ "$name" = "Manju" ]
then
  echo his age is $age and $name is a good boy
else
  echo name does not exsist
fi