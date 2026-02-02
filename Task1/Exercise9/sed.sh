#!/bin/bash 

sed '2d' sampletext.txt

sed -f script.sed sampletext.txt

sed 's/Luke/Lukasz/g' sampletext.txt > sampletext2.txt

sed 's/Luke/Lukasz/' sampletext.txt

sed -i.bak 's/a great developer/the best developer/g' sampletext.txt