#### Preamble ####
# Purpose: Simulate the number of fire incidents in Toronto from 2018 to 2022.
# Author: Yingxuan Sun
# Date: January 23 2024 
# Contact:lindayx.sun@mail.utoronto.ca 

library(tidyverse)

# Read the dataset
data <- read_csv("outputs/data/Cleaned_Fire_Incidents_Data.csv") 

# Test if Year is within 2018 and 2022
year_test <- all(data$Year >= 2018 & data$Year <= 2022)

# Test if Estimated Dollar Loss is numeric
estimated_dollar_loss_test <- is.numeric(data$Estimated_Dollar_Loss)

