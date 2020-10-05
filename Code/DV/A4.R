##Data Visualization##
##10-04-2020##

# Clear Environment and Set Working Directory #
rm(list=ls())
setwd("/Users/Mimi/Documents/FALL 2020/Data Visualization/Scripts")

cdata <- read.csv("/Users/Mimi/Documents/FALL 2020/Data Visualization/Data/cereal.csv")

#Chart 1: Variable Width Column Chart
df<-data.frame(Brand= cdata$name,Calories= cdata$calories,width=cdata$sugars)
df$w <- cumsum(df$width) #cumulative sums.
df$wm <- df$w -df$width
df$Sugars <- with(df, wm +(w-wm)/2)
library(ggplot2)
p  <- ggplot(df, aes(ymin = 0))
p1 <- p + geom_rect(aes(xmin = wm, xmax = w, ymax = Calories, fill = Brand))
p2 <- p1 + geom_text(aes(x = Sugars, y = Calories, label = Brand),size=7,angle = 45)
p3 <- p2 + labs(title = "Brand Sugars per Calories", x = "Sugars", y = "Calories")
blue.bold.italic.10.text <- element_text(face = "bold.italic", color = "dark green", size = 16)
p4 <- p3 + theme(axis.title = blue.bold.italic.10.text, title = blue.bold.italic.10.text)
p4

#Chart 2: Table with Embedded Charts


#Chart 3: Horizontal Bar Plot
counts <- table(cdata$mfr)
barplot(counts, main="Manufacturer Distribution", horiz = TRUE, xlab="Number of Cereals")

counts <- table(cdata$type)
barplot(counts, main="Cereal Distribution", horiz = TRUE, xlab="Number of Cereals Hot vs. Cold")

#Chart 4: Vertical Bar Plot
counts <- table(cdata$mfr)
barplot(counts, main="Manufacturer Distribution", xlab="Number of Cereals")

counts <- table(cdata$type)
barplot(counts, main="Cereal Distribution", xlab="Number of Cereals Hot vs. Cold")