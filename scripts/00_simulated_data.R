#### Preamble ####
# Purpose: Simulate the number of fire incidents in Toronto from 2018 to 2022.
# Author: Yingxuan Sun
# Date: January 23 2024 
# Contact:lindayx.sun@mail.utoronto.ca 

#### Workspace setup ####
library(tidyverse)

# set seed for simulation
set.seed(123)

# Simulate a sequence of dates between 2018-01-01 and 2022-12-31
dates <- seq(from = ymd("2018-01-01"), to = ymd("2022-12-31") ,by = "day" )
fire_incident_time <- sample(dates, 1000, replace = TRUE)

# Simulate Estimated_Dollar_Loss
estimated_dollar_loss <- runif(1000, min = 0, max = 500000)

# Creating the simulated dataset
simulated_fire_data <- data.frame(Fire_Incident_Time = fire_incident_time, 
                                  Estimated_Dollar_Loss = estimated_dollar_loss)

# Write the simulated data to a CSV file
write.csv(x = simulated_fire_data, file = "outputs/data/simulated_fire_data.csv")