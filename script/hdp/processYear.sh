#!/usr/bin/env bash
 
# NCDC Weather file to load into hadoop
target="/data/climate/ncdc_data/ftp2.ncdc.noaa.gov/pub/data/noaa/1901";
 
# Un-gzip each station file and concat into one file
echo "reporter:status:Un-gzipping $target" >&2
for file in $target/*
	do
	#echo 'filename: '$file
	gunzip -c $file >> $target.all
	echo "reporter:status:Processed $file" >&2
done
 
# Put gzipped version into HDFS
#echo "reporter:status:Gzipping $target and putting in HDFS" >&2
#gzip -c $target.all | $HADOOP_INSTALL/bin/hadoop fs -put - gz/$target.gz

