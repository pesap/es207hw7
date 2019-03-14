library(stringr)
# Question 9
# Count the number of sites that start with San or Santa
sites_with_san <- loc %>%
  filter(stringr::str_detect(site_name, '^(San|Santa)') )
sites_with_san

