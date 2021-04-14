## Knowledge Mininig: Replication Code
## Valeria salinas-Lopez

# Set Working Directory
setwd("/Users/valer/OneDrive/Documents/Spring 2021/KM")

# Libraries
library(dplyr)
library(gsubfn)
library(tidyverse)
library(ggplot2)
library(RColorBrewer)

# Load Data
mydata <- read.csv("/Users/valer/OneDrive/Documents/Spring 2021/KM/KMdata.csv")

## Prepping Variables

# Combining Values for Affiliation
mydata$affiliation <- mydata$swag + mydata$assoc + mydata$donate + mydata$talk + mydata$sbonds + mydata$home + mydata$sports + mydata$major + mydata$ocpride + mydata$pride + mydata$colors + mydata$ocbelong

# Combining Values for Support/Acceptance
mydata$acceptance <- mydata$oppgrow + mydata$suppres + mydata$divexp + mydata$satacopp + mydata$unique + mydata$meanact + mydata$acsupp + mydata$cultacc

# Combining Values for Faculty/Staff Relations
mydata$relations <- mydata$value + mydata$facsrel + mydata$cares + mydata$appreciated

# Constructing Belonging Variable 9Dependent Variable
mydata$belonging <- mydata$affiliation + mydata$acceptance + mydata$relations + mydata$rep

## Recoding Variables for Easy Graphing

# School
mydata$schcode[mydata$study==0] <- "JSOM"
mydata$schcode[mydata$study==1] <- "EPPS"
mydata$schcode[mydata$study==2] <- "A&H"
mydata$schcode[mydata$study==3] <- "ATEC"
mydata$schcode[mydata$study==4] <- "BBS"
mydata$schcode[mydata$study==5] <- "ECS"
mydata$schcode[mydata$study==6] <- "IS"
mydata$schcode[mydata$study==7] <- "NSM"

# Immigrant Status
mydata$immcode[mydata$imm==0] <- "Non-Immigrant"
mydata$immcode[mydata$imm==1] <- "Immigrant"

# International Status
mydata$intcode[mydata$int==0] <- "Non-International"
mydata$intcode[mydata$int==1] <- "International"

## Graphics

# Bar Charts

# Belonging by Immigrant status
bel <- ggplot(mydata) + geom_bar(aes(belonging, fill= immcode))
bel + labs(title = "Belonging by Immigrant Status",
           x = "Belonging Scale",
           y = "Number of Students") + 
  scale_x_continuous(breaks=seq(0,70,5)) +
  scale_y_continuous(breaks=seq(0,10,1)) +
  theme_light() +
  scale_color_brewer(palette = "PuBuGn") + scale_fill_brewer(palette = "PuBuGn") +
  guides(fill=guide_legend(title="Immigrant Status"))

# Belonging by International Status
bel3 <- ggplot(data= subset(mydata, !is.na(intcode))) + geom_bar(aes(belonging, fill= intcode))
bel3 + labs(title = "Belonging by International Status",
            x = "Belonging Scale",
            y = "Number of Students") + 
  scale_x_continuous(breaks=seq(0,70,5)) +
  scale_y_continuous(breaks=seq(0,10,1)) +
  theme_light() +
  scale_color_brewer(palette = "Reds") + scale_fill_brewer(palette = "Reds") +
  guides(fill=guide_legend(title="International Status"))

# Immigrant Status by International Status
immint <- ggplot(data= subset(mydata, !is.na(mydata$intcode))) + geom_bar(aes(imm, fill= intcode))
immint + labs(title = "Immigrant Students by International Status",
              x = "Immigrant Status",
              y = "Number of Students") + 
  theme_classic() +
  scale_color_brewer(palette = "OrRd") + scale_fill_brewer(palette = "OrRd") +
  scale_x_discrete(limits=c(0,1)) +
  scale_y_continuous(breaks=seq(0,80,10)) +
  theme(axis.ticks.x = element_blank(), axis.text.x = element_text()) +
  guides(fill=guide_legend(title="International Status"))

# International Status
bp5 <- ggplot(data= subset(mydata, !is.na(mydata$intcode))) + geom_bar(aes(intcode, fill= intcode))
bp5 + labs(title = "International Status",
           x = "International Status",
           y = "Number of Students") + 
  theme_light() +
  scale_color_brewer(palette = "Dark2") + scale_fill_brewer(palette = "Dark2")+
  scale_x_discrete(limits= c("Non-International", "International")) +
  theme(axis.ticks.x = element_blank() +
          scale_y_continuous(breaks=seq(0,80,5)),
        legend.title = element_blank(),
        legend.position="none")

## Histogram

# Continent
bp <- ggplot(data= subset(mydata, !is.na(continent))) + geom_bar(aes(continent, fill= continent))
bp + labs(title = "Number of Students per Continent",
          x = "Continent",
          y = "Number of Students") + 
  scale_y_continuous(breaks=seq(0,45,5))+
  theme_classic() + 
  scale_color_brewer(palette = "Blues") + scale_fill_brewer(palette = "Blues") +
  theme(legend.title = element_blank(),
        legend.position="none")

# Region
bp2 <- ggplot(data= subset(mydata, !is.na(region))) + geom_bar(aes(region, fill= region))
bp2 + labs(title = "Number of Students per Region",
           x = "Region",
           y = "Number of Stuents") +
  scale_y_continuous(breaks=seq(0,35,5))+
  theme_light() + theme(legend.title = element_blank(),
                        legend.position="none",
                        axis.text.x = element_text(angle = 45, vjust = 1, hjust = 1),
                        axis.ticks.x = element_blank())

# School
bp3 <- ggplot(data= subset(mydata, !is.na(mydata$schcode))) + geom_bar(aes(schcode, fill= schcode))
bp3 + labs(title = "Number of Students per School",
           x = "School of Study",
           y = "Number of Students") +
  theme_light() +
  scale_color_brewer(palette = "Paired") + scale_fill_brewer(palette = "Paired") +
  theme(axis.ticks.x = element_blank() +
          scale_y_continuous(breaks=seq(0,40,5)),
        legend.title = element_blank(),
        legend.position="none")

# Immigrant Status
bp4 <- ggplot(mydata) + geom_bar(aes(immcode, fill= immcode))
bp4 + labs(title = "Immigration Status",
           x = "Immigrant Status",
           y = "Number of Students") + 
  theme_light() +
  scale_color_brewer(palette = "Dark2") + scale_fill_brewer(palette = "Dark2")+
  scale_x_discrete(limits= c("Non-Immigrant", "Immigrant")) +
  theme(axis.ticks.x = element_blank() +
          scale_y_continuous(breaks=seq(0,80,5)),
        legend.title = element_blank(),
        legend.position="none")

# Age
ggplot(data=mydata, aes(age)) + geom_histogram(stat= "count", breaks=seq(0, 5, by=1), col= "dark green",
                                                fill= "orange", alpha= 1) + 
  theme_light() + 
  scale_y_continuous(breaks=seq(0,100,20)) +
  scale_x_continuous(breaks=seq(0,5,1),
                     labels = c("0-18", "19-25", "26-35", "36-45", "45-55", "56-65")) +
  labs(title = "Age Range Distribution") +
  labs(x="Age Range", y="Frequency")

# Gender
ggplot(data=mydata, aes(gen)) + geom_histogram(stat= "count", breaks=seq(0, 2, by=1), col= "black", 
                                                fill= "purple", alpha= 1) + 
  theme_light() +
  labs(title = "Gender Distribution") +
  labs(x="Gender", y="Frequency") +
  scale_y_continuous(breaks=seq(0,140,20) +
                       scale_x_continuous(limits = c(0,2,1),
                                          labels = c("Male", "Female", "Other")))

# Class
ggplot(data=mydata, aes(class)) + 
  geom_histogram(stat= "count",
                 breaks=seq(0, 4, by=1),
                 col= "orange",
                 fill= "dark green",
                 alpha= 1) + 
  labs(title = "Classification Distribution") +
  labs(x="Classification", y="Frequency") +
  theme_light() + 
  scale_y_continuous(breaks=seq(0,60,10)) +
  scale_x_continuous(breaks=seq(0,4,1),
                     labels = c("Freshman", "Sophomore", "Junior", "Senior", "Graduate"))

