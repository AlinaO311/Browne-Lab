#!/bin/bash

awk '{ if (NR%4==1) { print $1"_"$2"/2" } else { print } }' Read2.fastq | less


for lib in *_R2.unpaired.fastq

do

cat $lib | sed 's/-2:/:/;n;n;n' | sed '1~4 s/$/\/2/g' > ${lib/.trim/.fq.fixed} ##fix names once have file format

done
