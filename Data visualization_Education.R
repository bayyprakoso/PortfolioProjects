#Data Visualization

##Step 1: Install and load necessary packages (if not already installed)
install.packages("Ecdat")     # for accessing the "Caschool" dataset
install.packages("ggplot2")   # for creating visualizations
library(Ecdat)
library(ggplot2)

##Step 2: Load the "Caschool" dataset into RStudio.
data("Caschool")

##Step 3: Explore the structure and summary of the dataset (optional).
str(Caschool)          # displays the structure of the dataset
summary(Caschool)      # provides summary statistics for each variable

##Step 4: Create data visualizations using ggplot2.
## Scatter plot
ggplot(Caschool, aes(x = str, y = testscr)) +
  geom_point() +
  xlab("Student-Teacher Ratio") +
  ylab("Test Scores")

## Bar plot
ggplot(Caschool, aes(x = county, y = testscr)) +
  geom_bar(stat = "summary", fun = "mean", fill = "steelblue") +
  xlab("County") +
  ylab("Average Test Scores")

## Box plot
ggplot(Caschool, aes(x = grspan, y = testscr)) +
  geom_boxplot(fill = "lightblue") +
  xlab("Grade Span") +
  ylab("Test Scores")