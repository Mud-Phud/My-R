# 
# Logic Statements (TRUE/FALSE), cbind and rbind Functions in R | 
# R Tutorial 1.10| MarinStatsLectures
# See https://www.youtube.com/watch?v=NFaK1Qn4u3A
# 


# Read in the data:

LungCapData <- read.table(file.choose(),header = T, sep = "\t")

# attach the data 
attach(LungCapData)

# Check the names
names(LungCapData)

head(LungCapData)

# We can look at the Ages variable, say the first 5 entries:

LungCapData$Age[1:5]

# Alternatively, we can "attach" the data.frame, then the following will be
# equivalent

attach(LungCapData)

Age[1:5]


temp <- Age>15
temp[1:5]

temp2 <- as.numeric(Age>15)

FemSmoke <- Gender == "female" & Smoke == "yes"

# Add the FemSmoke data to the dataframe as an extra column...

MoreData <- cbind(LungCapData,FemSmoke)

# first five data points of the new and improved data frame...

MoreData[1:5,]

