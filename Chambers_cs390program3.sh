#!/bin/bash

# Example Usage
# find . -type f -name "*.cpp" -o -name "*.h" | ./Chambers_cs390program3.sh

while read line 
do
    sed -i 's/unsigned char/CS390_UCHAR/g' $line      # unsigned char ->   CS390_UCHAR
    sed -i 's/char/CS390_CHAR/g' $line                # char ->            CS390_CHAR
    sed -i 's/unsigned short/CS390_UINT16/g' $line    # unsigned short ->  CS390_UINT16
    sed -i 's/short/CS390_INT16/g' $line              # short ->           CS390_INT16
    sed -i 's/unsigned int/CS390_UINT32/g' $line      # unsigned int ->    CS390_UINT32
    sed -i 's/int/CS390_INT32/g' $line                # int ->             CS390_INT32
    sed -i 's/float/CS390_FLOAT32/g' $line            # float ->           CS390_FLOAT32
    sed -i 's/double/CS390_FLOAT32/g' $line           # double ->          CS390_FLOAT32
    sed -i 's/bool/CS390_BOOL/g' $line                # bool ->            CS390_BOOL
done
