#!/bin/bash

source_url="ftp://ftp2.ncdc.noaa.gov/pub/data/noaa/";
download_to="./ncdc_data";
if [ ! -d "$download_to" ]; then
	mkdir "$download_to";
fi

# wget -r -c --progress=bar --no-parent -P ./ncdc_data ftp://ftp2.ncdc.noaa.gov/pub/data/noaa/2001;

wget -r -c --progress=bar --no-parent -P ./ncdc_data ftp://ftp2.ncdc.noaa.gov/pub/data/noaa/2004;
wget -r -c --progress=bar --no-parent -P ./ncdc_data ftp://ftp2.ncdc.noaa.gov/pub/data/noaa/2005;
wget -r -c --progress=bar --no-parent -P ./ncdc_data ftp://ftp2.ncdc.noaa.gov/pub/data/noaa/2006;
wget -r -c --progress=bar --no-parent -P ./ncdc_data ftp://ftp2.ncdc.noaa.gov/pub/data/noaa/2007;
wget -r -c --progress=bar --no-parent -P ./ncdc_data ftp://ftp2.ncdc.noaa.gov/pub/data/noaa/2008;
wget -r -c --progress=bar --no-parent -P ./ncdc_data ftp://ftp2.ncdc.noaa.gov/pub/data/noaa/2009;
wget -r -c --progress=bar --no-parent -P ./ncdc_data ftp://ftp2.ncdc.noaa.gov/pub/data/noaa/2010;
wget -r -c --progress=bar --no-parent -P ./ncdc_data ftp://ftp2.ncdc.noaa.gov/pub/data/noaa/2011;
wget -r -c --progress=bar --no-parent -P ./ncdc_data ftp://ftp2.ncdc.noaa.gov/pub/data/noaa/2012;
wget -r -c --progress=bar --no-parent -P ./ncdc_data ftp://ftp2.ncdc.noaa.gov/pub/data/noaa/2013;
wget -r -c --progress=bar --no-parent -P ./ncdc_data ftp://ftp2.ncdc.noaa.gov/pub/data/noaa/2014;
wget -r -c --progress=bar --no-parent -P ./ncdc_data ftp://ftp2.ncdc.noaa.gov/pub/data/noaa/2015;
wget -r -c --progress=bar --no-parent -P ./ncdc_data ftp://ftp2.ncdc.noaa.gov/pub/data/noaa/1999;
wget -r -c --progress=bar --no-parent -P ./ncdc_data ftp://ftp2.ncdc.noaa.gov/pub/data/noaa/1998;
