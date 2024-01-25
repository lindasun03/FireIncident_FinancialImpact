#### Preamble ####
# Purpose: Simulate the number of fire incidents in Toronto from 2018 to 2022.
# Author: Yingxuan Sun
# Date: January 23 2024 
# Contact:lindayx.sun@mail.utoronto.ca 

library(dplyr)
library(lubridate)

# Read the dataset
data <- read.csv("inputs/data/raw_data.csv")

# Convert the 'TFS_Alarm_Time' to a Date-Time object and extract the year
data$Year <- year(ymd_hms(data$TFS_Alarm_Time))

# Select only the columns for Year and Estimated Dollar Loss
cleaned_data <- data %>% select(Year, Estimated_Dollar_Loss)

# Remove rows with NA values in these columns
cleaned_data <- na.omit(cleaned_data)

# Write the cleaned data to a new CSV file
write.csv(cleaned_data, "outputs/data/Cleaned_Fire_Incidents_Data.csv", row.names = FALSE)
