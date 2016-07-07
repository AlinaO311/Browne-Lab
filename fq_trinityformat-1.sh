#!/bin/bash

##awk '{ if (NR%4==1) { print $1"_"$2"/1" } else { print } }' Read1.fastq | less

for lib in *_R1.trim.unpaired.fastq

do

cat $lib | sed 's/-1:/:/;n;n;n' | sed '1~4 s/$/\/1/g' > ${lib/.trim/.scrub.fixed}

done
