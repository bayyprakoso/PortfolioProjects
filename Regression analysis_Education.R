# Regression Analysis

##Step 1: Install and load necessary packages (if not already installed).

##Step 2: Load the "Caschool" dataset into RStudio.

##Step 3: Explore the structure and summary of the dataset (optional).

##Step 4: Perform regression analysis using lm().
reg_model <- lm(testscr ~ str + avginc, data = Caschool)

##Step 5: View the regression results.
summary(reg_model)