# Comparative Analysis

##Step 1: Install and load necessary packages (if not already installed)

##Step 2: Load the "Caschool" dataset into RStudio.
data("Caschool")

##Step 3: Explore the structure and summary of the dataset (optional).
str(Caschool)          # displays the structure of the dataset
summary(Caschool)      # provides summary statistics for each variable

##Step 4: Perform comparative analysis using appropriate statistical tests and visualizations.
## Perform ANOVA test
anova_result <- aov(testscr ~ district, data = Caschool)

## View the ANOVA results
summary(anova_result)

## comparative visualization
ggplot(Caschool, aes(x = district, y = testscr)) +
  geom_boxplot(fill = "lightblue") +
  xlab("District") +
  ylab("Test Scores")