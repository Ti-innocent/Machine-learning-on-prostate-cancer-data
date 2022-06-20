library(pastecs)
#library(ggplot2)

########### Load and Description of the data set ###############
prostate=read.csv("prostate-cancer-1.csv")
View(prostate)
head(prostate)
str(prostate)
ncol(prostate)
nrow(prostate)
sum(is.na(prostate)) ## Checking for empty observation in data set

######### Barplot of the response variable ####################
count=table(prostate$Y)
barplot(count, col=c('blue','green'), xlab="Y", ylab = "Count")

##### Checking for dimensionality of data set #################
dim(prostate)

########### Boxplot on the randomly selected variables ########
colors = c(rep("red",3),rep("blue",3),rep("green",4))
boxplot(prostate[,c(15,40,76,83,93,160,129,89,47)],col=colors,main="Box plot for Randomly selected variables")

######## Correlation between randomly selected variables
plot(prostate[,c(15,40,76,83,93,160,129,89,47)],col="blue")

