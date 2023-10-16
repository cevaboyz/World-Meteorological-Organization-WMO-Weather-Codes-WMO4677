library(rvest)
library(dplyr)

# Getting WMO Code Dictionary ---------------------------------------------

wmo_url <- "https://www.nodc.noaa.gov/archive/arc0021/0002199/1.1/data/0-data/HTML/WMO-CODE/WMO4677.HTM"


# Load the webpage
webpage <- read_html(wmo_url)

# Extract tables
tables <- webpage %>% html_table()

# Assuming that all tables of interest have three columns, we filter and bind them
weather_df <- lapply(tables, function(tbl) {
  if (ncol(tbl) == 3) {
    return(tbl)
  } else {
    return(NULL)
  }
}) %>% bind_rows()

# View the dataframe
head(weather_df)
