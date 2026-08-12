# Install tidyverse ecosystem 
install.packages("tidyverse")

# Load packages in RStudio 
library(tidyverse)

# Import data 
data <- read.csv("data/raw/pulse_data.csv")

# Data exploration 
# 1. display `first` few rows 
head(data)
head(data, n = 10)
head(data, 10)

# 2. display `last` few rows 
tail(data)
tail(data, n = 10)
tail(data, 10)

# 3. sampling 
sample_n(data, 10)
sampled_n <- sample_n(data, 30)

sample_frac(data, .20)
sampled_frac <- sample_frac(data, .20)

# 4. data structure 
glimpse(data)

# 5. access columns
data$Gender

# 6. if categorical in char; convert it to factor 
data$Gender <- as.factor(data$Gender)
data$Smokes <- as.factor(data$Smokes)
data$Alcohol <- as.factor(data$Alcohol)
data$Exercise <- as.factor(data$Exercise)
data$Ran <- as.factor(data$Ran)

# 7. summary stats 
summary(data)

# Data manipulation 
# 1. desired column selection 
# select single column using column name 
select(data, Age)

# select multiple column using column name 
select(data, Age, Height, Weight)

# select single column using column number 
select(data, 1)

# select multiple columns using column number 
select(data, 1, 3, 5)
select(data, c(1, 3, 5, 7))

# select column using range 
select(data, 1:5)

# select column using start_with() function 
select(data, starts_with("A"))

# select column using ends_with() function 
select(data, ends_with("r"))

# 2. filter rows (>, <, <=, >=, ==, AND, OR)
filter(data, Age > 18)
filter(data, Age < 18)
filter(data, Age >= 18)
filter(data, Age <= 18)
filter(data, Smokes == "Yes")
filter(data, Age > 18 & Smokes == "Yes")
filter(data, Age > 18 | Smokes == "Yes")

# 3. new variable 
data <- mutate(data, Age_Group = ifelse(Age > 18, "Adult", "Child"))

# 4. rename column 
data <- rename(data, Smoking_Status = Smokes)

# Select and filter 
selected_data <- select(data, Age, Gender, Height, Weight)
filter(selected_data, Age > 18)

# 1. select columns from data (`Age, Gender, Height, Weight`)
# 2. create new data variable `selected_data`
# 3. filter on `selected_data` 

# pipe operator (CLT + SHIFT + M)
data |> 
  select(Age, Gender, Height, Weight) |> 
  filter(Age > 18)

# grouping  and summarise data 
data |> 
  group_by(Gender) |> 
  summarise(mean_age = mean(Age), sd_age = sd(Age))


