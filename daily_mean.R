#'This function calculates the yearly daily average for a specific county
#' 
library(stringr)

daily_mean <- function(data, column, filter_column, filter) {
  data %>%
    filter(stringr::str_detect(filter_column, filter)) %>%
    group_by(date) %>%
    summarize(daily_mean=mean(column, na.rm=TRUE)) %>%
    group_by(year=year(date)) %>%
    summarize(annual_mean=mean(daily_mean, na.rm=TRUE))
}

