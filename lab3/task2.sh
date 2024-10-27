#!/bin/bash
x=$(grep -E '^2024,MokichevAI,Ae-21-21,[0-9]+,[3-5]' $1)
sed -i "s/$x/${x::-1}5/g" $1
