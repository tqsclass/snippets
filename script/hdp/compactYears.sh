#!/usr/bin/env bash

# Compact file groups. 
# usage:  $1 is label for target file
# 1 - read files by year and put in one big file 
# Result is one file ready for zipping

srcdir="/hdfs1/climate/";
target="/hdfs2/climate/";

echo "reporter:status:Reading $srcdir to $target" >&2

for year in {2000..2009}
  do
    echo start $srcdir$year.all to $target$1
    cat $srcdir$year.all >> $target$1

#    if [[ -d $year ]]; then
#      echo $(basename $year)  $(ls $s/$year/* | wc) files
#      for file in $year/*
#        do
#          gunzip -c $file >> $target/$(basename $year).all
#          #echo process $(basename $file) to $target/$(basename $year).all
#        done
#    fi
  done



