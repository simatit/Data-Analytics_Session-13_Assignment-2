# Problem 1
# Answer the below questions:
#a. Visualize the correlation between all variables in a meaningful and clear way of representing. 
#   Find out top 3 reasons for having more crime in a city.
#b. What is the difference between co-variance and correlation? Take an example from this dataset and
#   show the differences if any?

library(readr)
library(data.table)

getwd()
p<-"C:/Users/Centurion/Downloads"
setwd(p)
crime_data<-fread("C:/Users/Centurion/Downloads/COBRA-YTD2017.csv")
View(crime_data)
str(crime_data) 


#a. Visualize the correlation between all variables in a meaningful and clear way of representing. 
#   Find out top 3 reasons for having more crime in a city.

pairs(COBRA.YTD2017)

plot(x,y, data=COBRA.YTD2017)


#b. What is the difference between co-variance and correlation? 
#Take an example from this dataset and show the differences if any? 

#Correlation- 
# is when the change in one item may result in the change in the another item and varies from -1 to +1. 
#covariance - 
# is A measure used to indicate the extent to which two random variables change in tandem.Covariance is affected by the change in scale

cor(COBRA.YTD2017$x, COBRA.YTD2017$y, method = "spearman")
cor(COBRA.YTD2017$x, COBRA.YTD2017$y, method = "pearson")
cov(COBRA.YTD2017$x, COBRA.YTD2017$y) # covariance between 2 variables
cor.test(COBRA.YTD2017$x, COBRA.YTD2017$y, method = "spearman")
cor.test(COBRA.YTD2017$x, COBRA.YTD2017$y, method = "pearson")
cor.test(COBRA.YTD2017$x, COBRA.YTD2017$y, method = "kendal")
