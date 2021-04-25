## Knowledge Mining: PRII Replication Code
## Valeria Salinas-Lopez

# Set Working Directory
setwd("/Users/valer/OneDrive/Documents/Spring 2021/KM")

# Making each region a dummy variable
table(mydata$region)

mydata$carib[mydata$region=="Caribbean"] <- 1
mydata$carib[mydata$region=="Central Africa"] <- 0
mydata$carib[mydata$region=="Central America"] <- 0
mydata$carib[mydata$region=="East Africa"] <- 0
mydata$carib[mydata$region=="Eastern Asia"] <- 0
mydata$carib[mydata$region=="Eastern Europe"] <- 0
mydata$carib[mydata$region=="North Africa"] <- 0
mydata$carib[mydata$region=="North America"] <- 0
mydata$carib[mydata$region=="South-Central Asia"] <- 0
mydata$carib[mydata$region=="South America"] <- 0
mydata$carib[mydata$region=="Southeast Asia"] <- 0
mydata$carib[mydata$region=="West Africa"] <- 0
mydata$carib[mydata$region=="Western Asia"] <- 0
mydata$carib[mydata$region=="Western Europe"] <- 0

mydata$centaf[mydata$region=="Caribbean"] <- 0
mydata$centaf[mydata$region=="Central Africa"] <- 1
mydata$centaf[mydata$region=="Central America"] <- 0
mydata$centaf[mydata$region=="East Africa"] <- 0
mydata$centaf[mydata$region=="Eastern Asia"] <- 0
mydata$centaf[mydata$region=="Eastern Europe"] <- 0
mydata$centaf[mydata$region=="North Africa"] <- 0
mydata$centaf[mydata$region=="North America"] <- 0
mydata$centaf[mydata$region=="South-Central Asia"] <- 0
mydata$centaf[mydata$region=="South America"] <- 0
mydata$centaf[mydata$region=="Southeast Asia"] <- 0
mydata$centaf[mydata$region=="West Africa"] <- 0
mydata$centaf[mydata$region=="Western Asia"] <- 0
mydata$centaf[mydata$region=="Western Europe"] <- 0

mydata$centam[mydata$region=="Caribbean"] <- 0
mydata$centam[mydata$region=="Central Africa"] <- 0
mydata$centam[mydata$region=="Central America"] <- 1
mydata$centam[mydata$region=="East Africa"] <- 0
mydata$centam[mydata$region=="Eastern Asia"] <- 0
mydata$centam[mydata$region=="Eastern Europe"] <- 0
mydata$centam[mydata$region=="North Africa"] <- 0
mydata$centam[mydata$region=="North America"] <- 0
mydata$centam[mydata$region=="South-Central Asia"] <- 0
mydata$centam[mydata$region=="South America"] <- 0
mydata$centam[mydata$region=="Southeast Asia"] <- 0
mydata$centam[mydata$region=="West Africa"] <- 0
mydata$centam[mydata$region=="Western Asia"] <- 0
mydata$centam[mydata$region=="Western Europe"] <- 0

mydata$eaaf[mydata$region=="Caribbean"] <- 0
mydata$eaaf[mydata$region=="Central Africa"] <- 0
mydata$eaaf[mydata$region=="Central America"] <- 0
mydata$eaaf[mydata$region=="East Africa"] <- 1
mydata$eaaf[mydata$region=="Eastern Asia"] <- 0
mydata$eaaf[mydata$region=="Eastern Europe"] <- 0
mydata$eaaf[mydata$region=="North Africa"] <- 0
mydata$eaaf[mydata$region=="North America"] <- 0
mydata$eaaf[mydata$region=="South-Central Asia"] <- 0
mydata$eaaf[mydata$region=="South America"] <- 0
mydata$eaaf[mydata$region=="Southeast Asia"] <- 0
mydata$eaaf[mydata$region=="West Africa"] <- 0
mydata$eaaf[mydata$region=="Western Asia"] <- 0
mydata$eaaf[mydata$region=="Western Europe"] <- 0

mydata$eaas[mydata$region=="Caribbean"] <- 0
mydata$eaas[mydata$region=="Central Africa"] <- 0
mydata$eaas[mydata$region=="Central America"] <- 0
mydata$eaas[mydata$region=="East Africa"] <- 0
mydata$eaas[mydata$region=="Eastern Asia"] <- 1
mydata$eaas[mydata$region=="Eastern Europe"] <- 0
mydata$eaas[mydata$region=="North Africa"] <- 0
mydata$eaas[mydata$region=="North America"] <- 0
mydata$eaas[mydata$region=="South-Central Asia"] <- 0
mydata$eaas[mydata$region=="South America"] <- 0
mydata$eaas[mydata$region=="Southeast Asia"] <- 0
mydata$eaas[mydata$region=="West Africa"] <- 0
mydata$eaas[mydata$region=="Western Asia"] <- 0
mydata$eaas[mydata$region=="Western Europe"] <- 0

mydata$eaeu[mydata$region=="Caribbean"] <- 0
mydata$eaeu[mydata$region=="Central Africa"] <- 0
mydata$eaeu[mydata$region=="Central America"] <- 0
mydata$eaeu[mydata$region=="East Africa"] <- 0
mydata$eaeu[mydata$region=="Eastern Asia"] <- 0
mydata$eaeu[mydata$region=="Eastern Europe"] <- 1
mydata$eaeu[mydata$region=="North Africa"] <- 0
mydata$eaeu[mydata$region=="North America"] <- 0
mydata$eaeu[mydata$region=="South-Central Asia"] <- 0
mydata$eaeu[mydata$region=="South America"] <- 0
mydata$eaeu[mydata$region=="Southeast Asia"] <- 0
mydata$eaeu[mydata$region=="West Africa"] <- 0
mydata$eaeu[mydata$region=="Western Asia"] <- 0
mydata$eaeu[mydata$region=="Western Europe"] <- 0

mydata$noraf[mydata$region=="Caribbean"] <- 0
mydata$noraf[mydata$region=="Central Africa"] <- 0
mydata$noraf[mydata$region=="Central America"] <- 0
mydata$noraf[mydata$region=="East Africa"] <- 0
mydata$noraf[mydata$region=="Eastern Asia"] <- 0
mydata$noraf[mydata$region=="Eastern Europe"] <- 0
mydata$noraf[mydata$region=="North Africa"] <- 1
mydata$noraf[mydata$region=="North America"] <- 0
mydata$noraf[mydata$region=="South-Central Asia"] <- 0
mydata$noraf[mydata$region=="South America"] <- 0
mydata$noraf[mydata$region=="Southeast Asia"] <- 0
mydata$noraf[mydata$region=="West Africa"] <- 0
mydata$noraf[mydata$region=="Western Asia"] <- 0
mydata$noraf[mydata$region=="Western Europe"] <- 0

mydata$noram[mydata$region=="Caribbean"] <- 0
mydata$noram[mydata$region=="Central Africa"] <- 0
mydata$noram[mydata$region=="Central America"] <- 0
mydata$noram[mydata$region=="East Africa"] <- 0
mydata$noram[mydata$region=="Eastern Asia"] <- 0
mydata$noram[mydata$region=="Eastern Europe"] <- 0
mydata$noram[mydata$region=="North Africa"] <- 0
mydata$noram[mydata$region=="North America"] <- 1
mydata$noram[mydata$region=="South-Central Asia"] <- 0
mydata$noram[mydata$region=="South America"] <- 0
mydata$noram[mydata$region=="Southeast Asia"] <- 0
mydata$noram[mydata$region=="West Africa"] <- 0
mydata$noram[mydata$region=="Western Asia"] <- 0
mydata$noram[mydata$region=="Western Europe"] <- 0

mydata$csas[mydata$region=="Caribbean"] <- 0
mydata$csas[mydata$region=="Central Africa"] <- 0
mydata$csas[mydata$region=="Central America"] <- 0
mydata$csas[mydata$region=="East Africa"] <- 0
mydata$csas[mydata$region=="Eastern Asia"] <- 0
mydata$csas[mydata$region=="Eastern Europe"] <- 0
mydata$csas[mydata$region=="North Africa"] <- 0
mydata$csas[mydata$region=="North America"] <- 0
mydata$csas[mydata$region=="South-Central Asia"] <- 1
mydata$csas[mydata$region=="South America"] <- 0
mydata$csas[mydata$region=="Southeast Asia"] <- 0
mydata$csas[mydata$region=="West Africa"] <- 0
mydata$csas[mydata$region=="Western Asia"] <- 0
mydata$csas[mydata$region=="Western Europe"] <- 0

mydata$sam[mydata$region=="Caribbean"] <- 0
mydata$sam[mydata$region=="Central Africa"] <- 0
mydata$sam[mydata$region=="Central America"] <- 0
mydata$sam[mydata$region=="East Africa"] <- 0
mydata$sam[mydata$region=="Eastern Asia"] <- 0
mydata$sam[mydata$region=="Eastern Europe"] <- 0
mydata$sam[mydata$region=="North Africa"] <- 0
mydata$sam[mydata$region=="North America"] <- 0
mydata$sam[mydata$region=="South-Central Asia"] <- 0
mydata$sam[mydata$region=="South America"] <- 1
mydata$sam[mydata$region=="Southeast Asia"] <- 0
mydata$sam[mydata$region=="West Africa"] <- 0
mydata$sam[mydata$region=="Western Asia"] <- 0
mydata$sam[mydata$region=="Western Europe"] <- 0

mydata$seas[mydata$region=="Caribbean"] <- 0
mydata$seas[mydata$region=="Central Africa"] <- 0
mydata$seas[mydata$region=="Central America"] <- 0
mydata$seas[mydata$region=="East Africa"] <- 0
mydata$seas[mydata$region=="Eastern Asia"] <- 0
mydata$seas[mydata$region=="Eastern Europe"] <- 0
mydata$seas[mydata$region=="North Africa"] <- 0
mydata$seas[mydata$region=="North America"] <- 0
mydata$seas[mydata$region=="South-Central Asia"] <- 0
mydata$seas[mydata$region=="South America"] <- 0
mydata$seas[mydata$region=="Southeast Asia"] <- 1
mydata$seas[mydata$region=="West Africa"] <- 0
mydata$seas[mydata$region=="Western Asia"] <- 0
mydata$seas[mydata$region=="Western Europe"] <- 0

mydata$waf[mydata$region=="Caribbean"] <- 0
mydata$waf[mydata$region=="Central Africa"] <- 0
mydata$waf[mydata$region=="Central America"] <- 0
mydata$waf[mydata$region=="East Africa"] <- 0
mydata$waf[mydata$region=="Eastern Asia"] <- 0
mydata$waf[mydata$region=="Eastern Europe"] <- 0
mydata$waf[mydata$region=="North Africa"] <- 0
mydata$waf[mydata$region=="North America"] <- 0
mydata$waf[mydata$region=="South-Central Asia"] <- 0
mydata$waf[mydata$region=="South America"] <- 0
mydata$waf[mydata$region=="Southeast Asia"] <- 0
mydata$waf[mydata$region=="West Africa"] <- 1
mydata$waf[mydata$region=="Western Asia"] <- 0
mydata$waf[mydata$region=="Western Europe"] <- 0

mydata$was[mydata$region=="Caribbean"] <- 0
mydata$was[mydata$region=="Central Africa"] <- 0
mydata$was[mydata$region=="Central America"] <- 0
mydata$was[mydata$region=="East Africa"] <- 0
mydata$was[mydata$region=="Eastern Asia"] <- 0
mydata$was[mydata$region=="Eastern Europe"] <- 0
mydata$was[mydata$region=="North Africa"] <- 0
mydata$was[mydata$region=="North America"] <- 0
mydata$was[mydata$region=="South-Central Asia"] <- 0
mydata$was[mydata$region=="South America"] <- 0
mydata$was[mydata$region=="Southeast Asia"] <- 0
mydata$was[mydata$region=="West Africa"] <- 0
mydata$was[mydata$region=="Western Asia"] <- 1
mydata$was[mydata$region=="Western Europe"] <- 0

mydata$weu[mydata$region=="Caribbean"] <- 0
mydata$weu[mydata$region=="Central Africa"] <- 0
mydata$weu[mydata$region=="Central America"] <- 0
mydata$weu[mydata$region=="East Africa"] <- 0
mydata$weu[mydata$region=="Eastern Asia"] <- 0
mydata$weu[mydata$region=="Eastern Europe"] <- 0
mydata$weu[mydata$region=="North Africa"] <- 0
mydata$weu[mydata$region=="North America"] <- 0
mydata$weu[mydata$region=="South-Central Asia"] <- 0
mydata$weu[mydata$region=="South America"] <- 0
mydata$weu[mydata$region=="Southeast Asia"] <- 0
mydata$weu[mydata$region=="West Africa"] <- 0
mydata$weu[mydata$region=="Western Asia"] <- 0
mydata$weu[mydata$region=="Western Europe"] <- 1

# Linear Regression
## Backward Selection will be used to find the best predictors. This will be done twice; once with the "affiliation,"
## "acceptance," and "relations," as aggregated variables and twice with the variables broken down.

# Libraries
library(stargazer)
library(Hmisc)
library(plm)

# Linear Model with Affiliation, Acceptance, and Relations
lmfull1 <- lm(belonging ~ class + gpa + fgpa + gen + age + study + distance + rep + affiliation + acceptance + 
                relations + imm + int + usforeign + carib + centaf + centam + eaaf + eaas + eaeu + noraf + noram +
                csas + sam + seas + waf + was + weu, data = mydata)
summary(lmfull1)

# Starting Backward Selection

# Removing int
lm1bs1 <- lm(belonging ~ class + gpa + fgpa + gen + age + study + distance + rep + affiliation + acceptance + 
                relations + imm + usforeign + carib + centaf + centam + eaaf + eaas + eaeu + noraf + noram +
                csas + sam + seas + waf + was + weu, data = mydata)
summary(lm1bs1)

# Removing centaf
lm1bs2 <- lm(belonging ~ class + gpa + fgpa + gen + age + study + distance + rep + affiliation + acceptance + 
               relations + imm + usforeign + carib + centam + eaaf + eaas + eaeu + noraf + noram +
               csas + sam + seas + waf + was + weu, data = mydata)
summary(lm1bs2)

# Removing carib
lm1bs3 <- lm(belonging ~ class + gpa + fgpa + gen + age + study + distance + rep + affiliation + acceptance + 
               relations + imm + usforeign + centam + eaaf + eaas + eaeu + noraf + noram +
               csas + sam + seas + waf + was + weu, data = mydata)
summary(lm1bs3)

# Removing weu
lm1bs4 <- lm(belonging ~ class + gpa + fgpa + gen + age + study + distance + rep + affiliation + acceptance + 
               relations + imm + usforeign + centam + eaaf + eaas + eaeu + noraf + noram +
               csas + sam + seas + waf + was, data = mydata)
summary(lm1bs4)

# Removing sam
lm1bs5 <- lm(belonging ~ class + gpa + fgpa + gen + age + study + distance + rep + affiliation + acceptance + 
               relations + imm + usforeign + centam + eaaf + eaas + eaeu + noraf + noram +
               csas + seas + waf + was, data = mydata)
summary(lm1bs5)

# Removing fgpa
lm1bs6 <- lm(belonging ~ class + gpa + gen + age + study + distance + rep + affiliation + acceptance + 
               relations + imm + usforeign + centam + eaaf + eaas + eaeu + noraf + noram +
               csas + seas + waf + was, data = mydata)
summary(lm1bs6)

# Removing noraf
lm1bs7 <- lm(belonging ~ class + gpa + gen + age + study + distance + rep + affiliation + acceptance + 
               relations + imm + usforeign + centam + eaaf + eaas + eaeu + noram +
               csas + seas + waf + was, data = mydata)
summary(lm1bs7)

# Removing age
lm1bs8 <- lm(belonging ~ class + gpa + gen + study + distance + rep + affiliation + acceptance + 
               relations + imm + usforeign + centam + eaaf + eaas + eaeu + noram +
               csas + seas + waf + was, data = mydata)
summary(lm1bs8)

# Removing csas
lm1bs9 <- lm(belonging ~ class + gpa + gen + study + distance + rep + affiliation + acceptance + 
               relations + imm + usforeign + centam + eaaf + eaas + eaeu + noram +
               seas + waf + was, data = mydata)
summary(lm1bs9)

# Removing noram
lm1bs10 <- lm(belonging ~ class + gpa + gen + study + distance + rep + affiliation + acceptance + 
               relations + imm + usforeign + centam + eaaf + eaas + eaeu + seas + waf + was, data = mydata)
summary(lm1bs10)

# Removing centam
lm1bs11 <- lm(belonging ~ class + gpa + gen + study + distance + rep + affiliation + acceptance + 
                relations + imm + usforeign + eaaf + eaas + eaeu + seas + waf + was, data = mydata)
summary(lm1bs11)

# Removing eaeu
lm1bs12 <- lm(belonging ~ class + gpa + gen + study + distance + rep + affiliation + acceptance + 
                relations + imm + usforeign + eaaf + eaas + seas + waf + was, data = mydata)
summary(lm1bs12)

# Removing was
lm1bs13 <- lm(belonging ~ class + gpa + gen + study + distance + rep + affiliation + acceptance + 
                relations + imm + usforeign + eaaf + eaas + seas + waf, data = mydata)
summary(lm1bs13)

# Removing usforeign
lm1bs14 <- lm(belonging ~ class + gpa + gen + study + distance + rep + affiliation + acceptance + 
                relations + imm + eaaf + eaas + seas + waf, data = mydata)
summary(lm1bs14)

# Removing eaas
lm1bs15 <- lm(belonging ~ class + gpa + gen + study + distance + rep + affiliation + acceptance + 
                relations + imm + eaaf + seas + waf, data = mydata)
summary(lm1bs15)

# Removing eaaf
lm1bs16 <- lm(belonging ~ class + gpa + gen + study + distance + rep + affiliation + acceptance + 
                relations + imm + seas + waf, data = mydata)
summary(lm1bs16)

# Removing class
lm1bs17 <- lm(belonging ~ gpa + gen + study + distance + rep + affiliation + acceptance + 
                relations + imm + seas + waf, data = mydata)
summary(lm1bs17)

# Removing distance
lm1bs18 <- lm(belonging ~ gpa + gen + study + rep + affiliation + acceptance + 
                relations + imm + seas + waf, data = mydata)
summary(lm1bs18)

# Removing gpa
lm1bs19 <- lm(belonging ~ gen + study + rep + affiliation + acceptance + 
                relations + imm + seas + waf, data = mydata)
summary(lm1bs19)

# Removing waf
lm1bs20 <- lm(belonging ~ gen + study + rep + affiliation + acceptance + 
                relations + imm + seas, data = mydata)
summary(lm1bs20)

# Removing imm
lm1bs21 <- lm(belonging ~ gen + study + rep + affiliation + acceptance + 
                relations + seas, data = mydata)
summary(lm1bs21)

# Removing gen
lm1bs22 <- lm(belonging ~ study + rep + affiliation + acceptance + 
                relations + seas, data = mydata)
summary(lm1bs22)

# Removing study
lm1bs23 <- lm(belonging ~ rep + affiliation + acceptance + 
                relations + seas, data = mydata)
summary(lm1bs23)

# Removing seas
lm1bs24 <- lm(belonging ~ rep + affiliation + acceptance + 
                relations, data = mydata)
summary(lm1bs24)

# Stopped once there were no variables with zero stars (above 0.05) 

# Linear Model with Affiliation, Acceptance, and Relations broken down
# imm and weu taken out since it is "NA"
lmfull2 <- lm(belonging ~ class + gpa + fgpa + gen + age + study + distance + rep + swag + assoc + donate + talk + sbonds + home + sports + major + ocpride + 
                pride + colors + ocbelong + oppgrow + suppres + divexp + satacopp + unique + meanact + acsupp + cultacc + value + facsrel + cares + appreciated + 
                int + usforeign + carib + centaf + centam + eaaf + eaas + eaeu + noraf + noram + csas + sam + seas + waf + was, data = mydata)
summary(lmfull2)

# Starting Backward Selection

# Removing was 
lm2bs1 <- lm(belonging ~ class + gpa + fgpa + gen + age + study + distance + rep + swag + assoc + donate + talk + sbonds + home + sports + major + ocpride + 
                pride + colors + ocbelong + oppgrow + suppres + divexp + satacopp + unique + meanact + acsupp + cultacc + value + facsrel + cares + appreciated + 
                int + usforeign + carib + centaf + centam + eaaf + eaas + eaeu + noraf + noram + csas + sam + seas + waf, data = mydata)
summary(lm2bs1)

# Removing gpa
lm2bs2 <- lm(belonging ~ class + fgpa + gen + age + study + distance + rep + swag + assoc + donate + talk + sbonds + home + sports + major + ocpride + 
               pride + colors + ocbelong + oppgrow + suppres + divexp + satacopp + unique + meanact + acsupp + cultacc + value + facsrel + cares + appreciated + 
               int + usforeign + carib + centaf + centam + eaaf + eaas + eaeu + noraf + noram + csas + sam + seas + waf, data = mydata)
summary(lm2bs2)

# Removing fgpa
lm2bs3 <- lm(belonging ~ class + gen + age + study + distance + rep + swag + assoc + donate + talk + sbonds + home + sports + major + ocpride + 
               pride + colors + ocbelong + oppgrow + suppres + divexp + satacopp + unique + meanact + acsupp + cultacc + value + facsrel + cares + appreciated + 
               int + usforeign + carib + centaf + centam + eaaf + eaas + eaeu + noraf + noram + csas + sam + seas + waf, data = mydata)
summary(lm2bs3)

# Removing centaf
lm2bs4 <- lm(belonging ~ class + gen + age + study + distance + rep + swag + assoc + donate + talk + sbonds + home + sports + major + ocpride + 
               pride + colors + ocbelong + oppgrow + suppres + divexp + satacopp + unique + meanact + acsupp + cultacc + value + facsrel + cares + appreciated + 
               int + usforeign + carib + centam + eaaf + eaas + eaeu + noraf + noram + csas + sam + seas + waf, data = mydata)
summary(lm2bs4)

# Removing eaaf
lm2bs5 <- lm(belonging ~ class + gen + age + study + distance + rep + swag + assoc + donate + talk + sbonds + home + sports + major + ocpride + 
               pride + colors + ocbelong + oppgrow + suppres + divexp + satacopp + unique + meanact + acsupp + cultacc + value + facsrel + cares + appreciated + 
               int + usforeign + carib + centam + eaas + eaeu + noraf + noram + csas + sam + seas + waf, data = mydata)
summary(lm2bs5)

# Removing csas
lm2bs6 <- lm(belonging ~ class + gen + age + study + distance + rep + swag + assoc + donate + talk + sbonds + home + sports + major + ocpride + 
               pride + colors + ocbelong + oppgrow + suppres + divexp + satacopp + unique + meanact + acsupp + cultacc + value + facsrel + cares + appreciated + 
               int + usforeign + carib + centam + eaas + eaeu + noraf + noram + sam + seas + waf, data = mydata)
summary(lm2bs6)

# Removing eaas
lm2bs7 <- lm(belonging ~ class + gen + age + study + distance + rep + swag + assoc + donate + talk + sbonds + home + sports + major + ocpride + 
               pride + colors + ocbelong + oppgrow + suppres + divexp + satacopp + unique + meanact + acsupp + cultacc + value + facsrel + cares + appreciated + 
               int + usforeign + carib + centam + eaeu + noraf + noram + sam + seas + waf, data = mydata)
summary(lm2bs7)

# Removing centam
lm2bs8 <- lm(belonging ~ class + gen + age + study + distance + rep + swag + assoc + donate + talk + sbonds + home + sports + major + ocpride + 
               pride + colors + ocbelong + oppgrow + suppres + divexp + satacopp + unique + meanact + acsupp + cultacc + value + facsrel + cares + appreciated + 
               int + usforeign + carib + eaeu + noraf + noram + sam + seas + waf, data = mydata)
summary(lm2bs8)

# Removing gen
lm2bs9 <- lm(belonging ~ class + age + study + distance + rep + swag + assoc + donate + talk + sbonds + home + sports + major + ocpride + 
               pride + colors + ocbelong + oppgrow + suppres + divexp + satacopp + unique + meanact + acsupp + cultacc + value + facsrel + cares + appreciated + 
               int + usforeign + carib + eaeu + noraf + noram + sam + seas + waf, data = mydata)
summary(lm2bs9)

# Removing noram
lm2bs10 <- lm(belonging ~ class + age + study + distance + rep + swag + assoc + donate + talk + sbonds + home + sports + major + ocpride + 
               pride + colors + ocbelong + oppgrow + suppres + divexp + satacopp + unique + meanact + acsupp + cultacc + value + facsrel + cares + appreciated + 
               int + usforeign + carib + eaeu + noraf + sam + seas + waf, data = mydata)
summary(lm2bs10)

# Removing usforeign
lm2bs11 <- lm(belonging ~ class + age + study + distance + rep + swag + assoc + donate + talk + sbonds + home + sports + major + ocpride + pride + colors + 
                ocbelong + oppgrow + suppres + divexp + satacopp + unique + meanact + acsupp + cultacc + value + facsrel + cares + appreciated + int + carib + 
                eaeu + noraf + sam + seas + waf, data = mydata)
summary(lm2bs11)

# Removing carib
lm2bs12 <- lm(belonging ~ class + age + study + distance + rep + swag + assoc + donate + talk + sbonds + home + sports + major + ocpride + pride + colors + 
                ocbelong + oppgrow + suppres + divexp + satacopp + unique + meanact + acsupp + cultacc + value + facsrel + cares + appreciated + int + eaeu + 
                noraf + sam + seas + waf, data = mydata)
summary(lm2bs12)

# Removing eaeu
lm2bs13 <- lm(belonging ~ class + age + study + distance + rep + swag + assoc + donate + talk + sbonds + home + sports + major + ocpride + pride + colors + 
                ocbelong + oppgrow + suppres + divexp + satacopp + unique + meanact + acsupp + cultacc + value + facsrel + cares + appreciated + int + 
                noraf + sam + seas + waf, data = mydata)
summary(lm2bs13)

# Removing noraf
lm2bs14 <- lm(belonging ~ class + age + study + distance + rep + swag + assoc + donate + talk + sbonds + home + sports + major + ocpride + pride + colors + 
                ocbelong + oppgrow + suppres + divexp + satacopp + unique + meanact + acsupp + cultacc + value + facsrel + cares + appreciated + int + 
                sam + seas + waf, data = mydata)
summary(lm2bs14)

# Removing distance
lm2bs15 <- lm(belonging ~ class + age + study + rep + swag + assoc + donate + talk + sbonds + home + sports + major + ocpride + pride + colors + 
                ocbelong + oppgrow + suppres + divexp + satacopp + unique + meanact + acsupp + cultacc + value + facsrel + cares + appreciated + int + 
                sam + seas + waf, data = mydata)
summary(lm2bs15)

# Removing sam
lm2bs16 <- lm(belonging ~ class + age + study + rep + swag + assoc + donate + talk + sbonds + home + sports + major + ocpride + pride + colors + 
                ocbelong + oppgrow + suppres + divexp + satacopp + unique + meanact + acsupp + cultacc + value + facsrel + cares + appreciated + int + 
                seas + waf, data = mydata)
summary(lm2bs16)

# Removing int
lm2bs17 <- lm(belonging ~ class + age + study + rep + swag + assoc + donate + talk + sbonds + home + sports + major + ocpride + pride + colors + 
                ocbelong + oppgrow + suppres + divexp + satacopp + unique + meanact + acsupp + cultacc + value + facsrel + cares + appreciated + 
                seas + waf, data = mydata)
summary(lm2bs17)

# Removing waf
lm2bs18  <- lm(belonging ~ class + age + study + rep + swag + assoc + donate + talk + sbonds + home + sports + major + ocpride + pride + colors + 
                ocbelong + oppgrow + suppres + divexp + satacopp + unique + meanact + acsupp + cultacc + value + facsrel + cares + appreciated + 
                seas, data = mydata)
summary(lm2bs18)

# Removing age
lm2bs19  <- lm(belonging ~ class + study + rep + swag + assoc + donate + talk + sbonds + home + sports + major + ocpride + pride + colors + 
                 ocbelong + oppgrow + suppres + divexp + satacopp + unique + meanact + acsupp + cultacc + value + facsrel + cares + appreciated + 
                 seas, data = mydata)
summary(lm2bs19)

# Removing class
lm2bs20  <- lm(belonging ~ study + rep + swag + assoc + donate + talk + sbonds + home + sports + major + ocpride + pride + colors + 
                 ocbelong + oppgrow + suppres + divexp + satacopp + unique + meanact + acsupp + cultacc + value + facsrel + cares + appreciated + 
                 seas, data = mydata)
summary(lm2bs20)

# Removing study
lm2bs21  <- lm(belonging ~ rep + swag + assoc + donate + talk + sbonds + home + sports + major + ocpride + pride + colors + 
                 ocbelong + oppgrow + suppres + divexp + satacopp + unique + meanact + acsupp + cultacc + value + facsrel + cares + appreciated + 
                 seas, data = mydata)
summary(lm2bs21)

# Same variables are significantly important even when taken into account individually, however, 
# we now see that the Southeastern region of Asia is also significant.

# Residual vs. Fitted Plot
plot(lm1bs24)
plot(lm2bs21)

# Linear assumption is reasonable; the variables seem to hug the residual line meaning that the 
# variances of the error terms are equal; there is an outlier present

# Regreassion Table of both final models

stargazer(lm1bs24, type = "text", title = "Linear Model Table 1", digits = 1)

stargazer(lm2bs21, type = "text", title = "Linear Model Table 1", digits = 1)

# Correlation/Observation/P-value Tables

# lm1
myvars1 <- c("belonging", "rep", "affiliation", "acceptance", "relations")
newdata1 <- mydata[myvars1]
cortab1 <- rcorr(as.matrix(newdata1))
cortab1

## Affiliation and acceptance are pretty highly correlated at 0.72

# lm2
myvars2 <- c("belonging", "rep", "swag", "assoc", "donate", "talk", "sbonds", "home", "sports", "major", "ocpride",
             "pride", "colors", "ocbelong", "oppgrow", "suppres", "divexp", "satacopp", "unique", "meanact",
             "acsupp", "cultacc", "value", "facsrel", "cares", "appreciated", "seas")
newdata2 <- mydata[myvars2]
cortab2 <- rcorr(as.matrix(newdata2))
cortab2

## Affiliation and acceptance questions seem to still have high correlations (0.50s and 0.60s)

# Decision Trees

# Libraries
library(dplyr)
library(FSelector)
library(rpart)
library(caret)
library(rpart.plot)
library(data.tree)
library(xlsx)
library(caTools)

# Making belonging a factor variable
mydata$belong[mydata$belonging>= 50] <- 1
mydata$belong[mydata$belonging< 50] <- 0

# Create dataframe with statistically significant variables
myvars3 <- c("belong", "rep", "affiliation", "acceptance", "relations", "seas")
newdata3 <- mydata[myvars3]

# Tell program the format of the data
newdata4 <- mutate(newdata3, belong=factor(belong), rep= as.numeric(rep), affiliation= as.numeric(affiliation), 
                   acceptance= as.numeric(acceptance), relations= as.numeric(relations), seas=factor(seas))

# Splitting into training and testing data
set.seed(123)
sample = sample.split(newdata4$belong, SplitRatio = .70)
train = subset(newdata4, sample==TRUE)
test = subset(newdata4, sample == FALSE)

# Training the Decision Tree Classifier
tree <- rpart(belong ~.,
              cp = 0.001,
              data = train)

# Predictions
tree.belong.predicted <- predict(tree, test, type = 'class')

# Confusion Matrix for evaluating the model
confusionMatrix(tree.belong.predicted, test$belong)

# Visualize the Decision Tree
prp(tree)

# The variable that lowered the entropy the most was affiliation.

# Create dataframe for a more complex decision tree
myvars4 <- c("belong", "rep", "affiliation", "acceptance", "relations", "seas", "class", "gen", "age", "distance", "imm", "int", "usforeign")
newdata5 <- mydata[myvars4]

# Tell program the format of the data
newdata5 <- mutate(newdata5, belong=factor(belong), rep= as.numeric(rep), affiliation= as.numeric(affiliation), 
                   acceptance= as.numeric(acceptance), relations= as.numeric(relations), seas=factor(seas), class=factor(class), gen=factor(gen), age= as.numeric(age),
                   distance= as.numeric(distance), imm=factor(imm), int=factor(int), usforeign=factor(usforeign))

# Splitting into training and testing data
set.seed(123)
sample2 = sample.split(newdata5$belong, SplitRatio = .70)
train2 = subset(newdata5, sample2 == TRUE)
test2 = subset(newdata5, sample2 == FALSE)

# Training the Decision Tree Classifier
tree2 <- rpart(belong ~.,
              cp = 0.001,
              data = train2)

# Predictions
tree.belong.predicted2 <- predict(tree2, test2, type = 'class')

# Confusion Matrix for evaluating the model
confusionMatrix(tree.belong.predicted2, test2$belong)

# Visualize the Decision Tree
prp(tree2)

# Making the threshold for belong higher
mydata$belong2[mydata$belonging>= 65] <- 1
mydata$belong2[mydata$belonging< 65] <- 0

# Create dataframe with statistically significant variables
myvars5 <- c("belong2", "rep", "affiliation", "acceptance", "relations", "seas")
newdata6 <- mydata[myvars5]

# Tell program the format of the data
newdata6 <- mutate(newdata6, belong2=factor(belong2), rep= as.numeric(rep), affiliation= as.numeric(affiliation), 
                   acceptance= as.numeric(acceptance), relations= as.numeric(relations), seas=factor(seas))

# Splitting into training and testing data
set.seed(123)
sample3 = sample.split(newdata6$belong2, SplitRatio = .70)
train3 = subset(newdata6, sample3 ==TRUE)
test3 = subset(newdata6, sample3 == FALSE)

# Training the Decision Tree Classifier
tree3 <- rpart(belong2 ~.,
              cp = 0.001,
              data = train3)

# Predictions
tree.belong.predicted3 <- predict(tree3, test3, type = 'class')

# Confusion Matrix for evaluating the model
confusionMatrix(tree.belong.predicted3, test3$belong2)

# Visualize the Decision Tree
prp(tree3)

# affiliation remains as the predictor that lowers the entropy the most; only change was affiliation threshold is higher.



