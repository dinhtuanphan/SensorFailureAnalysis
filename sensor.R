# Load library

library(readxl)
library(randomForest)
library(tidyverse)

# Read data

sensor <- read_excel("20210524_sensors_aggregate.xlsx")
names(sensor)
str(sensor)
typeof(sensor)
summary(sensor)
head(sensor)
