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

# create an empty vector to store data

sumData <- numeric()
sumPass <- numeric()

# Run basic exploratory data analysis
newType <- sensor[sensor$`Adhesive Type` == "Low Viscosity" &
                 sensor$`Sensor Surface` == "Trench" &
                 sensor$`Filling Method` == "Pin" &
                sensor$`Working Resistance` == "< 2",]

flatPass <- subset(flat, flat$`Calibration Day 0` == "Pass")

sumData[1] <- nrow(flat)
sumPass[1] <- nrow(flatPass)

# flatSummary <- table(flat$`Calibration Day 0`)

trench <- sensor[sensor$`Adhesive Type` == "Low Viscosity" &
                   sensor$`Sensor Surface` == "Trench",]
trenchPass <- subset(trench, trench$`Calibration Day 0` == "Pass")
sumData[2] <- nrow(trench)
sumPass[2] <- nrow(trenchPass)

# trenchSummary <- table(trench$`Calibration Day 0`)

plot(sumPass)



