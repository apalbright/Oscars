# tld-oscars
Raw data, stata do-files, and R scripts for "I’d Like to Thank the Academy…for making this data available" (http://thelittledataset.com/2015/01/20/the-one-with-all-the-quantifiable-friendships/)

#1st heat table
In order to create the first heat table from the post, go into the raw_data folder and download the oscars3 excel file. Then,  run do-file "dataheattable1" in stata to yield "master.csv" (which can also be found in the "generated_data" folder). Lastly, run the R script "heattablebyaward" which uses master.csv to get the final result.

#2nd heat table
In order to create the second heat table, go into the raw_data folder and download the oscars3 excel file. Then, run do-file "dataheattable2" in stata to yield "genderactor.csv" (which can also be found in the "generated_data" folder). Lastly, run the R script "heattablebyaward" that uses genderactor.csv to get the final heat table.

#Pie chart
In order to create the pie chart, run the R script "pie." If you want to see where the pie data came from, go into the raw_data folder and download the oscars3 excel file. Then, run the "datapie" stata do-file on the oscars3 data.

#Stata directory note
You must specify the directory where you've downloaded the oscars3 file for all stata do-files to run properly

#R Packages needed
You'll need to install the packages ggplot2, plyr, reshape2, and scales in order to run the R scripts.
