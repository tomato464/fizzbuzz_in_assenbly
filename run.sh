#!/bin/bash

gcc -c -o fizzbuzz.o fizzbuzz.s
ld -e main -o fizzbuzz.bin fizzbuzz.o 
./fizzbuzz.bin

echo OK
