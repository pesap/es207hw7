library(stringr)
library(tydiverse)

mask1 <-str_detect(loc$address, "\\d{1,5}\\s\\w.\\s(\\b\\w*\\b\\s){1,2}\\w*\\.")
mask2 <-str_detect(loc$zip_code, "\\d{5}")
good_address <- loc %>%
  filter(mask1 & mask2)
good_address

# as a function
good_address_detect <- function(x){
  mask1 <-str_detect(x$address, "\\d{1,5}\\s\\w.\\s(\\b\\w*\\b\\s){1,2}\\w*\\.")
  mask2 <-str_detect(x$zip_code, "\\d{5}")
  good_address <- x %>%
    filter(mask1 & mask2)
  good_address
}

# example
# good_address_detect(loc)