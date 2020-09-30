## Replication Code for Final Paper ##
## Valeria Salinas-Lopez ##

## Regression Table ##

# Clear Environment and Set Working Directory #
rm(list=ls())
setwd("/Users/Mimi/Documents/SPRING 2020/Applied Regression/Final Project")

# Install Package and Run Library used to Read Data from Stata #
install.packages("haven")
library(haven)

# Read in Data #
mydata <- read_dta("/Users/Mimi/Documents/SPRING 2020/Applied Regression/Final Project/Data.dta")

# Create Linear Model #
# Model 1 #
fit <- lm(restrict~ gop*unionall+afp+unemp+avg_us+st2+year, data=mydata)

# Model 2 #
fit2 <- lm(restrict~ gop*unionpriv+afp+unemp+avg_us+st2+year, data=mydata)

# Model 3 #
fit3 <- lm(restrict~ gop*unionpub+afp+unemp+avg_us+st2+year, data=mydata)

# Install Package and Run Library used to Create Regression Tables #
install.packages("stargazer")
library(stargazer)

# Create Regression Table Original Models#
stargazer(fit,fit2,fit3, type = "text", title="Regression Table", digits=1, out="table1.txt")
# Table Edited in Word to make more Legible #

## Extension- Adding 'massideo' to each model (H1) ##
# Model 1 #
fit4 <- lm(restrict~ gop*unionall+afp+unemp+avg_us+st2+year+massideo, data=mydata)

# Model 2 #
fit5 <- lm(restrict~ gop*unionpriv+afp+unemp+avg_us+st2+year+massideo, data=mydata)

# Model 6 #
fit6 <- lm(restrict~ gop*unionpub+afp+unemp+avg_us+st2+year+massideo, data=mydata)

# Create Regression Table w/massideo (H1) #
stargazer(fit4,fit5,fit6, type = "text", title="Regression Table", digits=1, out="table2.txt")
# Table Edited in Word to make more Legible #

## Extension- gop and massideo interaction (H2) ##
fit7 <- lm(restrict~ gop*massideo+afp+unemp+avg_us+st2+year, data=mydata)

nobs(fit7)

# Create Regression Table (H2) #
stargazer(fit7, type = "text", title="Regression Table", digits=1, out="table3.txt")
# Table Edited in Word to make more Legible #

## Margins Plots ##

# Install Package and Run Library used to Creae Margins Plots #
install.packages ("interplot")
library(interplot)

# Model 1 #
interplot(m = fit, var1 = "gop", var2 = "unionall", hist = TRUE) +
  aes(color = "pink") + theme(legend.position="none") +
  geom_line(color = "pink") +
  geom_hline(yintercept = 0, linetype = "dashed") +
  xlab("Total Unionization") +
  ylab("Marginal Effect of GOP Control on Restrictive Labor Policy")

# Model 2 #
interplot(m = fit2, var1 = "gop", var2 = "unionpriv", hist = TRUE) +
  aes(color = "pink") + theme(legend.position="none") +
  geom_line(color = "pink") +
  geom_hline(yintercept = 0, linetype = "dashed") +
  xlab("Private Sector Unionization") +
  ylab("Marginal Effect of GOP Control on Restrictive Labor Policy")

# Model 3 #
interplot(m = fit3, var1 = "gop", var2 = "unionpub", hist = TRUE) +
  aes(color = "pink") + theme(legend.position="none") +
  geom_line(color = "pink") +
  geom_hline(yintercept = 0, linetype = "dashed") +
  xlab("Public Sector Unionization") +
  ylab("Marginal Effect of GOP Control on Restrictive Labor Policy")

## Extension- Margins Plot for gop*massideo ##
interplot(m = fit7, var1 = "gop", var2 = "massideo", hist = TRUE) +
  aes(color = "pink") + theme(legend.position="none") +
  geom_line(color = "pink") +
  geom_hline(yintercept = 0, linetype = "dashed") +
  xlab("Liberalism of the Mass Public") +
  ylab("Marginal Effect of GOP Control on Restrictive Labor Policy")

## Robustness Checks ##

# Multicollinearty #

# Correltation Matrix for H2 #
library(GGally)
library(Hmisc)

myvars <- c("gop", "massideo", "afp", "unemp", "avg_us", "st2", "year")
newdata <- mydata[myvars]
ggpairs(newdata)
cortab <- rcorr(as.matrix(newdata))
cortab

# VIF and Tolerance for H2 #
library(car)

fit8 <- lm(restrict~ gop+massideo+afp+unemp+avg_us+st2+year, data=mydata)
v <- vif(fit8)
stargazer(v, out="VIF.txt")
# Table Edited in Word to make more Legible #

t <- 1/vif(fit8)
stargazer(t, out="Tolerance.txt")
# Table Edited in Word to make more Legible #

# Missing Data #
which(is.na(mydata))

# tells us which observations are coded as -99
which(mydata==-99)

# tells uswhich observations are coded as "missing"
which(mydata=="missing")

missd <- mydata[0,]
for(i in 1:ncol(missd)) {
  missd[1,i] <- length(which(is.na(mydata[,i])))
}

# Transpose to see data more easily
pd <- t(missd)
# afp is the only variable with missing data that is in the model #

# Fixing Missingness #

# Variable Mean Imputation #
mydata$afp_vmi <- mydata$afp
mydata$afp_vmi[which(is.na(mydata$afp))] <- mean(mydata$afp, na.rm=TRUE)

# VMI for H1 #
# Model 1 #
fit4vmi <- lm(restrict~ gop*unionall+afp_vmi+unemp+avg_us+st2+year+massideo, data=mydata)
nobs(fit4vmi)

# Model 2 #
fit5vmi <- lm(restrict~ gop*unionpriv+afp_vmi+unemp+avg_us+st2+year+massideo, data=mydata)
nobs(fit5vmi)

# Model 6 #
fit6vmi <- lm(restrict~ gop*unionpub+afp_vmi+unemp+avg_us+st2+year+massideo, data=mydata)
nobs(fit6vmi)

# VMI for H2 #
fit7vmi <- lm(restrict~ gop*massideo+afp_vmi+unemp+avg_us+st2+year, data=mydata)
nobs(fit7vmi)

# Create Regression Table for H1 with VMI #
stargazer(fit4vmi,fit5vmi,fit6vmi, type = "text", title="Regression Table", digits=1, out="RegTVMIH1.txt")
# Table Edited in Word to make more Legible #

# Creating Regression Table for H2 with VMI
stargazer(fit7, fit7vmi, type = "text", title="Missing Data Regression Table", digits=1, out="RegTVMIH2.txt")
# Table Edited in Word to make more Legible #