library(tidyverse)


# data import 
data <- read.csv("data/raw/pulse_data.csv")

subset_data <- select(data, 1:3)
select(data, c(1, 5, 7))
