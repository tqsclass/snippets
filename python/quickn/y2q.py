#
# Reads Yahoo! Finance historical quotes csv files and
# writes the values into a new csv files suitable for import
# to Quicken.  Tested on Quicken 2009 Home.

# The quote files should be named after the ticker symbol,
# e.g. ibm.csv and be located in a subdirectory named
# 'quotes' relative to the script's working directory.

# initial boe version

import os
print os.getcwd()

qquotes = open('qquotes.csv','w')
yahoo_files = os.listdir('./quotes')
print yahoo_files

for file in yahoo_files:
	symbol = file.split('.')[0].upper()
	csv_file = open('./quotes/'+file,'r')
	csv_file.readline()
	for quote in csv_file.readlines():
		values = quote.strip().split(',')
		datev = values[0].strip().split('-')
		date = datev[1]+'/'+datev[2]+'/'+str((int(datev[0])-2000))
		entry = '"'+symbol+'"'+', ' +  values[4] +', '+  date+'\n'
		qquotes.write(entry)
	print '---- Processed '+symbol+' ----'


