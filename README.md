# tld-oscars
Data and R scripts for "I’d Like to Thank the Academy…for making this data available" (http://thelittledataset.com/2015/01/20/the-one-with-all-the-quantifiable-friendships/)

In order to create the first heat table from the post, download the oscars3 excel file (to add into repo later) and run do-file "dataheattable1" in stata (change the working directory in this file to your own). Then save the master excel file as a csv and run R script "heattablebyaward" on it.

In order to create the second heat table, run do-file "dataheattable2" in stata (change the working directory in this file to your own). Then save the genderactor1 excel file as a csv and run R script "heattablebyaward" on it.

In order to create the pie chart, run the R script "pie." If you want to see where the pie data came from, run the "datapie" stata do-file on the oscars3 data. Again, change the directory.
