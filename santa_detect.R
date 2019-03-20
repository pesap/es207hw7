library(stringr)
# Question 9
# Count the number of sites that start with San or Santa
sites_with_san <- loc %>%
  filter(stringr::str_detect(site_name, '^(San|Santa)') )
sites_with_san

## add so that we can actually count the number of sites
length(sites_with_san)

# You can also do this as a function, which I believe is what the HW called for
sites_with_san_detect <- function(x){
  x %>%
    filter(stringr::str_detect(site_name, '^(San|Santa)') )
  b <- length(filter(stringr::str_detect(site_name, '^(San|Santa)') ))
  assign("NumberOfSites", b)
  rm(b)
}
# example
# sites_with_san_detect(loc)