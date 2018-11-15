#!/bin/bash
for i in *.ol.txt
do
   echo $i
   # echo "YOUR Done next do item will delete project .ol. file" >> $i
   printf "last line\n" >> $i

done