#create heattable by gender actor
library("ggplot2")
library("plyr")
library("reshape2")
library("scales")

setwd("generated_data")
oscar<-read.csv(file="genderactor.csv")
oscar<-rename(oscar, c("GenderActor"="Gender.Actor", "words4"="Word.Count", "Ipercent"="I.Percent", "Wepercent"="We.Percent", "self"="Self.Ratio"))
oscar$Name <- with(oscar, reorder(Gender.Actor, Gender.Actor))

oscar.m <- melt(oscar)
oscar.s <- ddply(oscar.m, .(variable), transform,
	rescale = rescale(value))
	
oscar.s$Category <- oscar.s$variable
levels(oscar.s$Category) <- 
  list("Count" = c("Word.Count"),
       "Pct1" = c("I.Percent"),
       "Pct2" = c("We.Percent"),
       "Ratio" = c("Self.Ratio"))

oscar.s$rescaleoffset <- oscar.s$rescale + 100*(as.numeric(oscar.s$Category)-1)
scalerange <- range(oscar.s$rescale)
gradientends <- scalerange + rep(c(0,100,200,300), each=2)
colorends <- c("white", "grey37", "white", "darkslateblue", "white", "red3", "white", "darkcyan")


a<-ggplot(oscar.s, aes(variable, Name, label = round(oscar.s$value, 1))) + 
  geom_tile(aes(fill = rescaleoffset), colour = "white") +
  geom_text(, size=4, color="black") +
  scale_fill_gradientn(colours = colorends, values = rescale(gradientends)) + 
  scale_x_discrete("", expand = c(0, 0)) + 
  scale_y_discrete("", expand = c(0, 0)) + 
  theme_bw(base_size = 13) + 
  theme(legend.position = "none",
        axis.ticks = element_blank(), 
        axis.text.x = element_text(angle = 330, hjust = 0))
       
a+ggtitle("Comparing Means Across Gender-Actor Combinations")
