#Education Portfolio Project (Ecdat)

##install package "ecdat
install.packages("Ecdat")

##loading package
library(Ecdat)

##check data/show the data list
data(package = "Ecdat")
##Load the StudentGrades dataset from Ecdat package
data("Caschool")
##to quickly view the entire dataset in a separate tab
View("Caschool")
##To display the contents of a dataset directly in the console
print("Caschool")
##or
Caschool
##Display the first few rows of mydata
head(Caschool)
##Display the last 10 rows of mydata
tail(Caschool)
##to obtain summary statistics of your dataset
summary(Caschool)
##To access more detailed information about a specific dataset
?Caschool

#To perform descriptive statistics in RStudio

##Step 1: Install and load necessary packages (if not already installed).
## for descriptive statistics functions
install.packages("psych")
## for data manipulation functions
install.packages("dplyr")
##load the package
library(psych)
library(dplyr)

##Step 2: Load your dataset into RStudio
## replace "your_dataset.csv" with your actual dataset file name and path
data <- read.csv("your_dataset.csv")

##Step 3: Explore the structure and summary of the dataset
## displays the structure of the dataset
str(Caschool)
## provides summary statistics (minimum, maximum, quartiles, mean, etc.) for each variable
summary(Caschool)

##Step 4: Calculate specific descriptive statistics using appropriate functions
## calculates the mean of a variable
mean(Caschool$readscr)
mean(Caschool$mathscr)
## calculates the median of a variable
median(Caschool$readscr)
median(Caschool$mathscr)
## calculates the standard deviation of a variable
sd(Caschool$readscr)
sd(Caschool$mathscr)
## calculates the variance of a variable
var(Caschool$readscr)
var(Caschool$mathscr)
## calculates the 25th percentile of a variable
quantile(Caschool$readscr, 0.25)
quantile(Caschool$mathscr, 0.25)

##Step 5: Generate a correlation matrix for multiple variables.
## calculates the correlation between variables var1, var2, and var3
cor(Caschool$readscr, Caschool$mathscr)
cor(Caschool$readscr, Caschool$computer)
cor(Caschool$mathscr, Caschool$computer)
##subset the data
Caschool_Numeric <- Caschool[c("enrltot","teachers","calwpct","mealpct","computer","testscr","compstu","expnstu","str","avginc","elpct","readscr","mathscr")]
##make correlation
cor(Caschool_Numeric)
cor(Caschool_Numeric, method = "pearson")
