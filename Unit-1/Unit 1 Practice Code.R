#Vectors
age = c(22,21,24,19,20,23)
age

age[2]

yrs_math_edu = c(4,5,2,5,3,5)
yrs_math_edu


#Data Frames
df1 = data.frame(Age = age, Years = yrs_math_edu)
df1
df1[4,2] #Data in the 4th row 2nd column
df1[1,] #All data in the 1st row
df1$Years #All data in the 2nd column

#Data Frame 2
a = c("Mary","Martha","Kim", "Kristen", "Amy", "Sam")
b = c("English", "Math", "Sociology", "Math", "Music", "Dance")

df2 = data.frame(Name = a, Major = b)
df2

#Data Frame 3
df3 = data.frame(Age = age, Years = yrs_math_edu, Name = a, Major = b)
df3

#Combined Columns
df4 = cbind(df1,df2)
df4

str(df4)
class(df4$Name)
df4$Name
summary(df4)

d = c(19, 4, "John", "Spanish")
df5 = rbind(df4, d)
df5

df5$Name = as.factor(df5$Name)
df5$Major = as.factor(df5$Major)
 summary(df5)
 df5

 str(df5) 

 
 #Filter the data frame
 #All students with more than 4 years of math
 df5[df5$Years > 4,]
 
 #All students with 4 years of math that are older than 21
 df5[(df5$Age >= 21 & df5$Years > 4),]
 
 #All Math Majors
 df5[df5$Major == "Math",]

 
 #Example1 = read.csv(file.choose(), header = TRUE)
#Example1  
 #head(Example1) 
 
 #plot(Example1$ad_tv, Example1$sales, pch = 15, xlab = "TV Advertising $$$", ylab = "Sales", main = "Sales v. Advertising")
#abline(h = 55, col = "red", lwd = 5) 
#dev.off()

#hist(Example1$ad_tv, col = "blue", main = "TV Ad Cost for a 15 second slot", xlab = "TV Ad Dollars in thousands")
 

data("mtcars")
head(mtcars, 6)


pairs(~mpg+disp+drat+wt,data=mtcars, main="Simple Scatterplot Matrix")


sample1 = rnorm(1000, 0,1)
hist(sample1)      
mean(sample1)
sd(sample1)

population = rnorm(100000000, 0, 1)
hist(population)
mean(population)
sample1 = sample(population)
hist(sample1)

xBarVec = c()


####################################
#Function: XbarGenerator
#Arguments: samplesize: the size of the sample that each sample mean is base on.
        #number_of_samples: the number of samples and thus sample means we will test
#Author: Allen Miller
###################################
xbarGenerator = function(sampleSize = 30, number_of_samples = 100, mu = 0, sd = 1)
{
        for (i in 1:number_of_samples) {
                theSample = rnorm(sampleSize, mu, sd)
                xbar = mean(theSample)
                xBarVec = c(xBarVec, xbar)
        }
        return(xBarVec)
}

xbars = xbarGenerator(50,10000, 60, 10)
length(xbars)
hist(xbars, main = "Random Distributions")
summary(xbars)
sd(xbars)
10/sqrt(50)
