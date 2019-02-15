# This repo includes...
Raw data, stata do-files, and R scripts for my blog post [I’d Like to Thank the Academy…for making this data available.](http://thelittledataset.com/2015/02/19/id-like-to-thank-the-academy-for-making-this-data-available/)

# Raw Data

You can use the `oscars_10-14.csv` for your own analysis! I manually collected all the speeches from the 2010-2014 Oscars (as pulled from [the Oscar speeches website](http://aaspeechesdb.oscars.org/).)

## Notes

Each row is a different speech and coding is mostly self-explanatory. `Actor = 1` means that row is an actor's speech. `Gender = 1` means that row is a speech given by a woman. `Played Off = 1` means that the person got cut off my music. *It is not an error that there is no info for original screenplay in 2012. In 2012, Woody Allen was not present to accept the Writing (Original Screenplay) award so there was no speech.*

# To Make Visuals...

## 1st heat table
In order to create the first heat table, clone the repository and then run the R script "heattablebyaward." If you'd like to investigate how the data was cleaned and organized, you can also run the do-file "dataheattable1"--this do-file creates the "master.csv" file found in the "generated_data" folder. 

## 2nd heat table
In order to create the second heat table, clone the repository and then run the R script "heattablebygenderactor." If you'd like to investigate how the data was cleaned and organized, you can also run the do-file "dataheattable2"--this do-file creates the "genderactor.csv" file found in the "generated_data" folder. 

## Pie chart
In order to create the pie chart, clone the repository and then run the R script "pie." If you want to see where the pie data came from, run the "datapie" stata do-file.

## R Packages needed
You'll need to install the packages ggplot2, plyr, reshape2, and scales in order to run the R scripts.
