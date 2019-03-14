# This code calculate the yearly mean, median, max and min for a dataset
# Also, it filters the data based on a Regex str
library(tidyverse)

yearly_summary <- function(data, column, filter, filter_column){
    data %>%
        filter(stringr::str_detect(filter_column, filter)) %>%
        group_by(year=year(date)) %>%
        summarize(mean = mean(column, na.rm = TRUE), median = median(column, na.rm=TRUE), max=max(column, na.rm=TRUE), min =min(column, na.rm=TRUE))
}
