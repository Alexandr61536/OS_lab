#!/bin/sh
rm result1.txt 2>/dev/null
cat ./Пивоварение/tests/TEST-1 >> tmp.txt
cat ./Пивоварение/tests/TEST-2 >> tmp.txt
cat ./Пивоварение/tests/TEST-3 >> tmp.txt
cat ./Пивоварение/tests/TEST-4 >> tmp.txt

cat ./Уфология/tests/TEST-1 >> tmp.txt
cat ./Уфология/tests/TEST-2 >> tmp.txt
cat ./Уфология/tests/TEST-3 >> tmp.txt
cat ./Уфология/tests/TEST-4 >> tmp.txt

./task1_1.sh ./tmp.txt

rm ./tmp.txt
