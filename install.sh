#!/bin/bash


#Method 1:
#remove github.com/prometheus/prometheus prefix, and replace with prometheus
#grep "github.com\/prometheus\/prometheus" -rl . > tmp.txt
#while read line
#do
#  sed -i "s/github.com\/prometheus\/prometheus/prometheus/g" $line
#done < tmp.txt
#rm tmp.txt

#Method 2:
mkdir ../github.com
mkdir ../github.com/prometheus
rm -rf ../github.com/prometheus/prometheus
cp -r ../prometheus ../github.com/prometheus/
#ln -s ../prometheus ../github.com/prometheus/

make build
