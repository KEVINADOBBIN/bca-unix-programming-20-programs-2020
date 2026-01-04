chmod +x power.sh
#!/bin/bash

# Check number of arguments
if [ $# -ne 2 ]
then
    echo "Invalid number of arguments"
    echo "Usage: $0 <base> <exponent>"
    exit 1
fi

base=$1
exp=$2
result=1
i=1

# Positive exponent
if [ $exp -ge 0 ]
then
    while [ $i -le $exp ]
    do
        result=$((result * base))
        i=$((i + 1))
    done
    echo "Result = $result"
else
    # Negative exponent
    exp=$(( -exp ))
    while [ $i -le $exp ]
    do
        result=$(echo "scale=4; $result / $base" | bc)
        i=$((i + 1))
    done
    echo "Result = $result"
fi
