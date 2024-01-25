#### Preamble ####
# Purpose: Simulate the number of fire incidents in Toronto from 2018 to 2022.
# Author: Yingxuan Sun
# Date: January 23 2024 
# Contact:lindayx.sun@mail.utoronto.ca 

library(opendatatoronto)
library(dplyr)

# get package
package <- show_package("64a26694-01dc-4ec3-aa87-ad8509604f50")
package

# get all resources for this package
resources <- list_package_resources("64a26694-01dc-4ec3-aa87-ad8509604f50")

# identify datastore resources; by default, Toronto Open Data sets datastore resource format to CSV for non-geospatial and GeoJSON for geospatial resources
datastore_resources <- filter(resources, tolower(format) %in% c('csv', 'geojson'))

# load the first datastore resource as a sample
data <- filter(datastore_resources, row_number()==1) %>% get_resource()
write.csv(x = data , file = "inputs/data/raw_data.csv")