# arithmatic expression 
: '
echo "hello world"
val=`expr 2 + 2`
write this way to print 
echo  sum : $val
or echo "sum : $val"
taking user input
read name
echo $name '


#input take in same line and password will take silent
: 'read -p "user name :" name
read -sp "password :" pass
echo 
echo name is : $name
echo password is : $pass
'


# read two number and check greater than or less than 
: '
read num1
read num2
if [ $num1 -gt $num2 ]
then
echo $num1 is greater than $num2

elif [ $num1 -lt $num2 ]
then
echo $num1 is less than $num2

else
echo $num1 is equal to $num2
fi '

#string compare below
: ' 
read name
read name2
if [ "$name" == "$name2" ]
then 
echo $name is equal to $name2
else
echo not equal
fi
'
# sum to number without using 'expr' but must put double brace 

 #read num1
 #read num2
 #echo $((num1 + num2))
 #echo $((num1 - num2))
 #echo $((num1 * num2))
 #echo $((num1 / num2)) 
 


# while loop 1 to 10 print
 : 'n=1
 while [ $n -le 10 ]
 do
    echo $n
     #n=$(( n+1 ))  # no space after n and before $ sign 
     (( n++ )) # we can also increment like this but double brace compulsury 
done '

# for loop

: '#for i in {1..10..2} #(star..end..increment)
for (( i=0; i<5; i++ ))
do
echo $i
done 
'
: '
# find even or odd
 read num

 if [ $((num%2)) -eq 0 ]
 then
 echo number $num is even
 else
 echo number $num is odd
 fi '

 # find even number  between 1 to 50
 
 : 'for (( i=2; i<=10; i++ ))
 do
 if [ $((i%2)) -eq 0 ]
 then

 echo number $i
 fi
 done 
 # another approch
 read num

 for (( i=2; i<=$num; i=$((i+2)) ))
 do
 echo $i 
 done
  '
  #find prime or not
  bool=true
  read num
  for (( i=2; i<=$((num/2)); i++ ))
  do
  if [ $((num%i)) -eq 0 ]
        then
        bool=false
        break
  fi
  done

  if [ "$bool" = true ]
        then
        echo $Num is prime
  else
  echo $num is not prime
  fi
