# a name given to a set of commands is called as function
#to decrale a function /syntax
fucntion_name(){
  echo hello world
}

# to call a function
fucntion_name

#we can also give inouts to the functions

func(){
  echo first argument = $1
  echo second argument = $2
  echo all arguments = $*
  echo number of arguments = $#
}

func 123 xyz