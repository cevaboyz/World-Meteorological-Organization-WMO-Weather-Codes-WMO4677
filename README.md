# WMO Weather Codes (WMO4677) - World Meteorological Organization
World Meteorological Organization (WMO) Weather Codes | WMO4677

WMO-Codes-Scraper
This repository contains a web scraper written in R to extract WMO codes from the NOAA page and get a dataset of the extracted codes.

Contents
WMO_scraper.R - R code for scraping WMO codes.
weather_data.json - Dataset in JSON format containing the extracted WMO codes.
How to Use
Install Dependencies:
Before running the R code, ensure you have the following R libraries installed:

R
Copy code
install.packages("rvest")
install.packages("dplyr")
install.packages("jsonlite")
Run the Code:
Execute WMO_scraper.R to obtain a fresh set of scraped data from the NOAA page.

Dataset:
After running the scraper, the updated dataset can be found in weather_data.json.

Contributing
If you find any errors or would like to contribute to the scraper's improvement, feel free to open an issue or a pull request.
