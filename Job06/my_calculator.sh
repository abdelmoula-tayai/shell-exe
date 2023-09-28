firstnumber=$1
operator=$2
secondnumber=$3
if [ "$2" = "+" ]; then result=$((firstnumber + secondnumber))
fi 

if [ "$2" = "x" ]; then result=$((firstnumber *  secondnumber))
fi
 
if [ "$2" = "/" ]; then result=$((firstnumber / secondnumber))
fi 

if [ "$2" = "-" ]; then result=$((firstnumber - secondnumber))
fi 

echo "$result"
