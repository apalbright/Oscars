# tld-oscars
Raw data, stata do-files, and R scripts for "I’d Like to Thank the Academy…for making this data available" (http://thelittledataset.com/2015/02/19/id-like-to-thank-the-academy-for-making-this-data-available/)

#1st heat table
In order to create the first heat table, clone the repository and then run the R script "heattablebyaward." If you'd like to investigate how the data was cleaned and organized, you can also run the do-file "dataheattable1"--this do-file creates the "master.csv" file found in the "generated_data" folder. 

#2nd heat table
In order to create the second heat table, clone the repository and then run the R script "heattablebygenderactor." If you'd like to investigate how the data was cleaned and organized, you can also run the do-file "dataheattable2"--this do-file creates the "genderactor.csv" file found in the "generated_data" folder. 

#Pie chart
In order to create the pie chart, clone the repository and then run the R script "pie." If you want to see where the pie data came from, run the "datapie" stata do-file.

#R Packages needed
You'll need to install the packages ggplot2, plyr, reshape2, and scales in order to run the R scripts.
