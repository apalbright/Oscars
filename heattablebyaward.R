#create heat table for means across award categories
library("ggplot2")
library("plyr")
library("reshape2")
library("scales")

setwd("generated_data")
oscar <- read.csv("master.csv")
oscar$Name <- with(oscar, reorder(Award, Award))
oscar<-rename(oscar, c("words"="Word.Count", "Ipercent"="I.Percent", "Wepercent"="We.Percent", "Self"="Self.Ratio"))


oscar.m <- melt(oscar)
oscar.s <- ddply(oscar.m, .(variable), transform,
               rescale = scale(value))

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
  geom_text(, size=3.25, color="black") +
  scale_fill_gradientn(colours = colorends, values = rescale(gradientends)) + 
  scale_x_discrete("", expand = c(0, 0)) + 
  scale_y_discrete("", expand = c(0, 0)) + 
  theme_bw(base_size = 12) + 
  theme(legend.position = "none",
        axis.ticks = element_blank(), 
        axis.text.x = element_text(angle = 330, hjust = 0))
       
a+ggtitle("Comparing Means Across Oscar Award Categories")
