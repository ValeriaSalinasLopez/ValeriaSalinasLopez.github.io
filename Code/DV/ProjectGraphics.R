## Data Visualization: Graphics
# Valeria Salinas-Lopez

# Clear All Data
rm(list=ls())

## Desktop
# Set Working Directory
setwd("/Users/Mimi/Documents/FALL 2020/Data Methods/Scripts")

# Loading Data In
mydata <- read.csv("/Users/Mimi/Documents/FALL 2020/Data Methods/Survey.csv")
mydata2 <- read.csv("/Users/Mimi/Documents/FALL 2020/Data Methods/Survey2.csv")

## Laptop
setwd("/Users/valer/OneDrive/Documents/Fall 2020/Data Methods/Scripts")
mydata <- read.csv("/Users/valer/OneDrive/Documents/Fall 2020/Data Methods/Survey.csv")
mydata2 <- read.csv("/Users/valer/OneDrive/Documents/Fall 2020/Data Methods/Survey2.csv")

library(dplyr)
library(gsubfn)
library(tidyverse)
library(ggplot2)
library(RColorBrewer)

## Bar Charts

# Belonging by Immigrant status
bel <- ggplot(mydata2) + geom_bar(aes(belonging, fill= immcode, position= "dodge",
                                      stat= "count", width= 1))
bel + labs(title = "Belonging by Immigrant Status",
           x = "Belonging Scale",
           y = "Number of Students") + 
  scale_x_continuous(breaks=seq(0,70,5)) +
  scale_y_continuous(breaks=seq(0,10,1)) +
  theme_light() +
  scale_color_brewer(palette = "PuBuGn") + scale_fill_brewer(palette = "PuBuGn") +
  guides(fill=guide_legend(title="Immigrant Status"))

# Belonging by International Status
bel3 <- ggplot(data= subset(mydata2, !is.na(intcode))) + geom_bar(aes(belonging, fill= intcode, position= "dodge",
                                      stat= "count", width= 1))
bel3 + labs(title = "Belonging by International Status",
           x = "Belonging Scale",
           y = "Number of Students") + 
  scale_x_continuous(breaks=seq(0,70,5)) +
  scale_y_continuous(breaks=seq(0,10,1)) +
  theme_light() +
  scale_color_brewer(palette = "Reds") + scale_fill_brewer(palette = "Reds") +
  guides(fill=guide_legend(title="International Status"))

# Belonging by Negative Experiences
bel2 <- ggplot(data= subset(mydata2, !is.na(negexcode))) + geom_bar(aes(belonging, fill= negexcode,
                                                                        stat= "count", width= 1))
bel2 + labs(title = "Belonging by Negative Experiences",
           x = "Belonging Scale",
           y = "Number of Students") + 
  scale_x_continuous(breaks=seq(0,70,5)) +
  scale_y_continuous(breaks=seq(0,10,1)) +
  theme_light() +
  scale_color_brewer(palette = "Spectral") + scale_fill_brewer(palette = "Spectral") +
  guides(fill=guide_legend(title="Type of Negative Experience"))
  
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
bp3 <- ggplot(data= subset(mydata2, !is.na(mydata2$schcode))) + geom_bar(aes(schcode, fill= schcode))
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
bp4 <- ggplot(mydata2) + geom_bar(aes(immcode, fill= immcode))
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

# Immigrant Status by International Status
immint <- ggplot(data= subset(mydata2, !is.na(mydata2$intcode))) + geom_bar(aes(imm, fill= intcode, position= "dodge"),
                                                                        breaks=seq(1, 1, by=1))
immint + labs(title = "Immigrant Students by International Status",
           x = "Immigrant Status",
           y = "Number of Students") + 
  theme_classic() +
  scale_color_brewer(palette = "OrRd") + scale_fill_brewer(palette = "OrRd") +
  scale_x_continuous(breaks=seq(0,1,1)) +
  scale_y_continuous(breaks=seq(0,80,10)) +
  theme(axis.ticks.x = element_blank(), axis.text.x = element_blank()) +
  guides(fill=guide_legend(title="International Status"))

# International Status
bp5 <- ggplot(data= subset(mydata2, !is.na(mydata2$intcode))) + geom_bar(aes(intcode, fill= intcode))
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

# Negative Experiences
bn <- ggplot(data= subset(mydata2, !is.na(mydata2$negexcode))) + geom_bar(aes(negexcode, fill= negexcode))
bn + labs(title = "Negative Experiences of Immigrant Students",
          x = "Negative Experience",
          y = "Number of Students") + 
  theme_light() +
  scale_color_brewer(palette = "Paired") + scale_fill_brewer(palette = "Paired") +
  theme(axis.ticks.x = element_blank() +
        scale_y_continuous(breaks=seq(0,60,5)),
        legend.title = element_blank(),
        legend.position="none")
  

## Histogram

# Age
ggplot(data=mydata2, aes(age)) + geom_histogram(stat= "count", breaks=seq(0, 6, by=1), col= "dark green",
                                                fill= "orange", alpha= 1) + 
  theme_light() + 
  scale_y_continuous(breaks=seq(0,100,20)) +
  scale_x_continuous(breaks=seq(0,6,1),
                     labels = c("0-18", "Blank", "19-25", "26-35", "36-45", "45-55", "56-65")) +
  labs(title = "Age Range Distribution") +
  labs(x="Age Range", y="Frequency")

# Gender (Partially Working)
ggplot(data=mydata2, aes(gen)) + geom_histogram(stat= "count", breaks=seq(0, 2, by=1), col= "black", 
                                                fill= "purple", alpha= 1) + 
  theme_light() +
  labs(title = "Gender Distribution") +
  labs(x="Gender", y="Frequency") +
  scale_y_continuous(breaks=seq(0,140,20) +
  scale_x_continuous(breaks=seq(0,2,1),
                     labels = c("Male", "Female", "Other")))
  
# Class
ggplot(data=mydata2, aes(class)) + 
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

# Threat
ggplot(data=mydata2, aes(threat)) + geom_histogram(stat= "count", breaks=seq(0,20, by=1), col= "dark blue",
                                                   fill= "red", alpha= 1) + theme_classic() + 
  scale_y_continuous(breaks=seq(0,30,5)) + scale_x_continuous(breaks=seq(0,20,1)) +
  labs(title = "Threat Scale Distribution") + labs(x="Threat Scale Totals", y="Frequency")

# Benefit
ggplot(data=mydata2, aes(benefit)) + geom_histogram(stat= "count", breaks=seq(0,25,5), col= "orange", 
                                                    fill= "dark blue", alpha= 1) + 
  theme_classic() + 
  labs(title = "Benefit Scale Distribution") + 
  labs(x="Benefit Scale Totals", y="Frequency") + 
  scale_y_continuous(breaks = c(0,5,10))

# TWD Non-Immigrant
ggplot(data=mydata2, aes(twd)) + 
  geom_histogram(stat= "count",
                 breaks=seq(0,20, by=1),
                 col= "dark blue",
                 fill= "purple",
                 alpha= 1) + 
  theme_classic() + 
  scale_y_continuous(breaks=seq(0,15,5)) +
  scale_x_continuous(breaks=seq(0,15,1)) +
  labs(title = "Feelings Towards Immigrants Distribution") +
  labs(x="Feeling Scale Totals", y="Frequency")

# TWD Immigrants
ggplot(data=mydata2, aes(itwd)) + 
geom_histogram(stat= "count",
               breaks=seq(0,20, by=1),
               col= "dark blue",
               fill= " dark cyan",
               alpha= 1) + 
  theme_classic() + 
  scale_y_continuous(breaks=seq(0,15,5)) +
  scale_x_continuous(breaks=seq(0,15,1)) +
  labs(title = "Feelings of Immigrants on Immigrant Treatment") +
  labs(x="Feeling Scale Totals", y="Frequency")

## Scatter Plots

# Ingroup Identity v. Narcissism (Failed Code)
ggplot(mydata2) + aes(x=ingroupid, y=narcissim) + geom_point() + geom_smooth(y~ x, method = "lm", se = FALSE) +
  labs(x= "Ingroup Identity", y= "Narcissism", 
       title= "Relationship between Ingroup Identity and Narcissism") + theme_classic() +
  scale_x_continuous(breaks=seq(0,12.5,1)) +
  scale_y_continuous(breaks=seq(0,15,1))

# Working
ggplot()+ geom_point(aes(x= mydata2$ingroupid, y= mydata2$narcissim))+ labs(x= "Ingroup Identity", y= "Narcissism", 
       title= "Relationship between Ingroup Identity and Narcissism")+ theme_classic() +
  scale_x_continuous(breaks=seq(0,12.5,1)) +
  scale_y_continuous(breaks=seq(0,15,1))

# Benefit of Immigrants v. Sense of Threat
ggplot()+
  geom_point(aes(x= mydata2$benefit, y= mydata2$threat))+
  labs(x= "Belief of Benefit", y= "Sense of Threat", 
       title= "Relationship between Benefit of Immigrants and Sense of Threat")+
  theme_classic() +
  scale_x_continuous(breaks=seq(0,24,1)) +
  scale_y_continuous(breaks=seq(0,18,1))

# Belonging v. To What Degree (non-immigrant)
ggplot()+
  geom_point(aes(x= mydata2$belonging, y= mydata2$twd))+
  labs(x= "Belonging", y= "To What Degree Scale", 
       title= "Relationship between Belonging and To What Degree Scale (Non-immigrant)")+
  theme_classic() +
  scale_x_continuous(breaks=seq(0,70,5)) +
  scale_y_continuous(breaks=seq(0,16,2))

# Belonging v. To What Degree (Immigrant)
ggplot()+
  geom_point(aes(x= mydata2$belonging, y= mydata2$itwd))+
  labs(x= "Belonging", y= "To What Degree Scale", 
       title= "Relationship between Belonging and To What Degree Scale (Immigrant)")+
  theme_classic() +
  scale_x_continuous(breaks=seq(0,70,5)) +
  scale_y_continuous(breaks=seq(0,15,2))

# Anti-immigrant Sentiment v. To What Degree (Non-immigrant)
ggplot()+
  geom_point(aes(x= mydata2$antimm, y= mydata2$twd))+
  labs(x= "Anti-immigrant Sentiment", y= "To What Degree Scale", 
       title= "Relationship between Anti-immigrant Sentiment and To What Degree Scale (Non-immigrant)")+
  theme_classic() +
  scale_x_continuous(breaks=seq(0,25,5)) +
  scale_y_continuous(breaks=seq(0,16,2))

# Anti-immigrant Sentiment v. Threat
ggplot()+
  geom_point(aes(x= mydata2$antimm, y= mydata2$threat))+
  labs(x= "Anti-immigrant Sentiment", y= "Sense of Threat", 
       title= "Relationship between Anti-Immigrant Sentiment and Sense of Threat")+
  theme_classic() +
  scale_x_continuous(breaks=seq(0,25,5)) +
  scale_y_continuous(breaks=seq(0,18,2))

# Anti-immigrant Sentiment v. Benefit
ggplot()+
  geom_point(aes(x= mydata2$antimm, y= mydata2$benefit))+
  labs(x= "Anti-immigrant Sentiment", y= "Sense of Benefit", 
       title= "Relationship between Anti-immigrant Sentiment and Sense of Benefit")+
  theme_classic() +
  scale_x_continuous(breaks=seq(0,25,5)) +
  scale_y_continuous(breaks=seq(0,24,2))

## Future Graphs

# Histograms

# In-Group Identification

# Narcissism

# Anti-Immigrant Sentiments

# Each Threat (6)

# TWD Each Feeling (8)

# ITWD Each Feeling (8)