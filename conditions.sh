fruit_name=mango
quantity=100


#input missing to check the input

if [ -z "$name" ]
then
  echo input is missing
fi

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

#alwasy double quate the varialble in expressions to avoid failures

if [ $age -gt 25 ]
then
  echo $name is a old person
else
  echo $name is a youngest person
fi

