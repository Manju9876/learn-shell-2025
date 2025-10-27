#two types of loops
#while loop based on the expression
#runs as long as the contition is true
count=5
while [${count} -gt 1]; do
  echo "count=${count}"
  count=$((count-1))
done
#for loop based on the input
#for variable in list
#do
#   commands
#done
for i in 1 2 3 ; do
  echo number: ${i}
done