#!/usr/bin/env bash

# Process NCDC weather file. 
# For each year directory present (eg 1901..2015}
# 1 - unzip all files for that year
# 2 - concantenate all zip files for a year into one file
# 3 - zip up the resulting file
# Result is one zipped file for each year

source="/hdfs2/climate/ncdc_data/ftp2.ncdc.noaa.gov/pub/data/noaa";
target="/hdfs1/climate";

echo "reporter:status:Unzipping $source to $target" >&2

for year in $source/*
  do
    if [[ -d $year ]]; then
      echo $(basename $year)  $(ls $s/$year/* | wc) files
      for file in $year/*
        do
          gunzip -c $file >> $target/$(basename $year).all
          #echo process $(basename $file) to $target/$(basename $year).all
        done
        echo processed $(basename $year)
    fi
  done

