#!/bin/bash

# Example Usage
# find . -type f -name "*.cpp" | ./Chambers_cs390program3.sh

while read line 
do
    sed -i 's/\bunsigned char\b/CS390_UCHAR/g' $line      # unsigned char ->   CS390_UCHAR
    sed -i 's/\bchar\b/CS390_CHAR/g' $line                # char ->            CS390_CHAR
    sed -i 's/\bunsigned short\b/CS390_UINT16/g' $line    # unsigned short ->  CS390_UINT16
    sed -i 's/\bshort\b/CS390_INT16/g' $line              # short ->           CS390_INT16
    sed -i 's/\bunsigned int\b/CS390_UINT32/g' $line      # unsigned int ->    CS390_UINT32
    sed -i 's/\bint\b/CS390_INT32/g' $line                # int ->             CS390_INT32
    sed -i 's/\bfloat\b/CS390_FLOAT32/g' $line            # float ->           CS390_FLOAT32
    sed -i 's/\bdouble\b/CS390_FLOAT64/g' $line           # double ->          CS390_FLOAT32
    sed -i 's/\bbool\b/CS390_BOOL/g' $line                # bool ->            CS390_BOOL
done
