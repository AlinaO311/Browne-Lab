# Browne-Lab

##Re-fromating .fq Illumina reads

*trinity appears to process files in an older Illumina .fq format such that the end of the header of the new Illumina files are no longer compatible with trinity

*Need to have files broken into Foward(1) and Reverse (2) reads, with each header(and every 4th line) in the "Forward file" having a "/1" at the end of each header/4th line.

*Create script to run through a directory every file and to create unique output for each sample in library. 

##Organization for files to be processed:

1) Directory for _ALL_ libraries to be processed

2) Sub-directories to store the unique samples from each library

3) Within each 'sample_subdirectory' have unique reads with Foward and Reverse indicated by 1 and 2.

4) Run script to process all files into proper format, files go from .fastq-->.fq(trinity format) and place into same folders

5) Run Trinity on selected libraries/samples/individual_files?
