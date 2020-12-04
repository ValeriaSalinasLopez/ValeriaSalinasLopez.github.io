# Data Methods/ Data Visualization: Project Replication Code

# Clear All Data
rm(list=ls())

## Libraries Used
install.packages('ggplot2')
install.packages('Hmisc')
install.packages('stargazer')
install.packages('GGally')
install.packages('dplyr')
install.packages('gsubfn')
install.packages('tidyverse')
install.packages('plyr')
library(ggplot2)
library(Hmisc)
library(stargazer)
library(GGally)
library(dplyr)
library(gsubfn)
library(tidyverse)
library(plyr)


## Set Working Directory

# Desktop
setwd("/Users/Mimi/Documents/FALL 2020/Data Methods/Scripts")
# Laptop
setwd("/Users/valer/OneDrive/Documents/Fall 2020/Data Methods/Scripts")

## Loading In Data 

# Desktop
mydata <- read.csv("/Users/Mimi/Documents/FALL 2020/Data Methods/Survey.csv")
mydata2 <- read.csv("/Users/Mimi/Documents/FALL 2020/Data Methods/Survey2.csv")
# Laptop
mydata <- read.csv("/Users/valer/OneDrive/Documents/Fall 2020/Data Methods/Survey.csv")
mydata2 <- read.csv("/Users/valer/OneDrive/Documents/Fall 2020/Data Methods/Survey2.csv")


## Prepping Variables

# Combining Values for Affiliation
mydata2$affiliation <- mydata$aff1 + mydata$aff2 + mydata$aff3 + mydata$aff4 + mydata$aff5 + mydata$aff6 + mydata$aff7 + mydata$aff8 + mydata$aff9 + mydata$aff10 + mydata$aff11+ mydata$aff12

# Combining Values for Support/Acceptance
mydata2$acceptance <- mydata$supact1 + mydata$supact2 + mydata$supact3 + mydata$supact4 + mydata$supact5 + mydata$supact6 + mydata$supact7 + mydata$supact8

# Combining Values for Faculty/Staff Relations
mydata2$relations <- mydata$fsr1 + mydata$fsr2 + mydata$fsr3 + mydata$fsr4

# Combining Values for Ingroup Identification/Collective Esteem
mydata2$ingroupid <- mydata$inid1 + mydata$inid2 + mydata$inid3 + mydata$inid4

# Combining Values for Narcissism
mydata2$narcissim <- mydata$narc1 + mydata$narc2 + mydata$narc3 + mydata$narc4 + mydata$narc5

# Combining values for Anti-Immigrant 
mydata2$antimm <- mydata2$ingroupid + mydata2$narcissim

# Combining Values for Threat
mydata2$threat <- mydata$threat1 + mydata$threat2 + mydata$threat3 + mydata$threat4 + mydata$threat5 + mydata$threat6

# Combining Values for Benefits
mydata2$benefit <- mydata$ben1 + mydata$ben2 + mydata$ben3 + mydata$ben4 + mydata$ben5 + mydata$ben6 + mydata$ben7 + mydata$ben8

# Combining Values for To What Degree Qs
mydata2$twd <- mydata$twd1 + mydata$twd2 + mydata$twd3 + mydata$twd4 + mydata$twd5 + mydata$twd6 + mydata$twd7 + mydata$twd8

# Combining Values for To What Degree Qs (Immigrant)
mydata2$itwd <- mydata$itwd1 + mydata$itwd2 + mydata$itwd3 + mydata$itwd4 + mydata$itwd5 + mydata$itwd6 + mydata$itwd7 + mydata$itwd8

# Combining Values for Negative Experiences
mydata2$negex <- mydata$negex1 + mydata$negex2 + mydata$negex3 + mydata$negex4 + mydata$negex5

# Constructing Belonging Variable
mydata2$belonging <- mydata2$affiliation + mydata2$acceptance + mydata2$relations + mydata$rep

## Recoding Variables for Easy Graphing

# School
mydata2$schcode[mydata2$school==0] <- "JSOM"
mydata2$schcode[mydata2$school==1] <- "EPPS"
mydata2$schcode[mydata2$school==2] <- "A&H"
mydata2$schcode[mydata2$school==3] <- "ATEC"
mydata2$schcode[mydata2$school==4] <- "BBS"
mydata2$schcode[mydata2$school==5] <- "ECS"
mydata2$schcode[mydata2$school==6] <- "IS"
mydata2$schcode[mydata2$school==7] <- "NSM"

# Immigrant Status
mydata2$immcode[mydata2$imm==0] <- "Non-Immigrant"
mydata2$immcode[mydata2$imm==1] <- "Immigrant"

# International Status
mydata2$intcode[mydata2$int==0] <- "Non-International"
mydata2$intcode[mydata2$int==1] <- "International"

# Negative Experiences
mydata2$negexcode[mydata2$negex==0] <- "Fear"
mydata2$negexcode[mydata2$negex==1] <- "Unwelcome/Unwanted"
mydata2$negexcode[mydata2$negex==2] <- "Intelligence Questioned"
mydata2$negexcode[mydata2$negex==3] <- "Rude Comments/Remarks"
mydata2$negexcode[mydata2$negex==4] <- "Discrimination"

## Data Analysis

## Descriptive Statistics

# Summary Table
stargazer(mydata2, 
          type = 'text', min.max=TRUE, mean.sd = TRUE, 
          nobs = TRUE, median = FALSE, iqr = FALSE,
          digits=1, align=T,
          title = "Summary Statistics")
# Edited in Word

## Inferential Statistics

# Create Regression Model
regression1 <- lm(belonging ~ class + gen + age + school + distance + int + imm + negex + itwd, data = mydata2)

# Create Regression Table
stargazer(regression1, type = "text", title = "Belonging Regression Table", digits = 1)
# Edited in Word

# Correlation/Observation/P-value Tables
myvars <- c("class", "gen", "age", "school", "distance", "int", "imm", "negex", "itwd", "belonging")
newdata <- mydata2[myvars]
cortab <- rcorr(as.matrix(newdata))
cortab
# Edited in Word

