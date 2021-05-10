# Libraries
library(ISLR)
library(dplyr)
library(FSelector)
library(rpart)
library(caret)
library(rpart.plot)
library(data.tree)
library(caTools)


pcadata <- mydata[,8:32]

head(pcadata)
pr.out <- prcomp(pcadata, scale. = TRUE)
pr.out$rotation

pr.var <- pr.out$sdev^2
pve <- pr.var/sum(pr.var)
plot(pve, xlab="Principal Component", 
     ylab="Proportion of Variance Explained", 
     ylim=c(0,1),type='b')

pcadata2 <- mydata[,8:10]
head(pcadata2)
pr.out2 <- prcomp(pcadata2, scale. = TRUE)
pr.out2$rotation

pr.var <- pr.out2$sdev^2
pve <- pr.var/sum(pr.var)
plot(pve, xlab="Principal Component", 
     ylab="Proportion of Variance Explained", 
     ylim=c(0,1),type='b')

model <- prcomp(pcadata2, center = FALSE)
summary(model)

pr.out2$scale

pr.out2$rotation=-pr.out2$rotation
pr.out2$x=-pr.out2$x
biplot(pr.out2, scale=0)

# Using PCs for Regression

# 1 PC
lmfull1 <- lm(belonging ~ class + age + rep + int + carib + centam + eaas, data = mydata)
summary(lmfull1)

# 3 PCs
lmfull2 <- lm(belonging ~ gpa + fgpa + rep + value + oppgrow + 
                int + carib, data = mydata)
summary(lmfull2)

# Residual vs. Fitted Plot
plot(lmfull1)
plot(lmfull2)

# Regreassion Table of both final models

stargazer(lmfull1, type = "text", title = "Regression Table 1: 1 PC", digits = 1)

stargazer(lmfull2, type = "text", title = "Regression Table 1: 3 PsC", digits = 1)

# Correlation/Observation/P-value Tables

# lmfull1
myvars1 <- c("rep", "class", "age", "int", "carib", "centam", "eaas")
newdata1 <- mydata[myvars1]
cortab1 <- rcorr(as.matrix(newdata1))
cortab1

# lmfull2
myvars2 <- c("rep", "oppgrow", "value", "gpa", "fgpa", "int", "carib")
newdata2 <- mydata[myvars2]
cortab2 <- rcorr(as.matrix(newdata2))
cortab2

# Decision Trees

# Create dataframe with statistically significant variables
## lmfull1
myvars3 <- c("belonging", "rep", "class", "age", "int", "carib", "centam", "eaas")
newdata3 <- mydata[myvars3]

# Making belonging a factor variable
newdata3$belong[mydata$belonging>= 50] <- 1
newdata3$belong[mydata$belonging< 50] <- 0


# Tell program the format of the data
newdata4 <- mutate(newdata3, belong=factor(belong), rep=factor(rep), class= as.numeric(class), 
                   age= as.numeric(age), int=factor(int), carib=factor(carib), centam=factor(centam), eaas=factor(eaas))

# Splitting into training and testing data
set.seed(123)
sample = sample.split(newdata4$belong, SplitRatio = .70)
train = subset(newdata4, sample==TRUE)
test = subset(newdata4, sample == FALSE)

# Training the Decision Tree Classifier
tree <- rpart(belong ~., data = train)

# Predictions
tree.belong.predicted <- predict(tree, test, type = "class")

# Confusion Matrix for evaluating the model
confusionMatrix(tree.belong.predicted, test$belong)

# Visualize the Decision Tree
prp(tree)
