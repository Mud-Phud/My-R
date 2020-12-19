# reading csv files

# Script for importing cancer data for Statistical Thinking for Public Health MOOC

g <- read.csv(file="Programming/R/cancer data for MOOC 1.csv",header = TRUE, sep=",")

head(g)

gender <- g[,'gender']
head(gender)

# there is a problem with this in that gender can't take on any value or even
# any integer value but rather only 0 (female) and 1 (male), i.e., it is categorical.
# categorical variables are "factors" in R. Correct this with:

gender <- as.factor(g[,'gender'])

# now we can get determine the number of males and females in the sample via

table(gender)

# a better way to do this would be to declare gender to be a categorical variable 
# when reading the CSV file. 

summary(g[,'bmi'])

hist(g[,'bmi'])

# there is an alternative method to single out variables using the $ notation:
# g$bmi is equivalent to g[,'bmi']...

summary(g$bmi)

# you can also use this to determine how many total fruits and vegetables the sample 
# is eating, e.g.,

hist(g$fruit+g$veg)

