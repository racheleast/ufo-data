



library(tidyverse)




data <- read_csv("nuforc_reports.csv")


is_na <- data %>% filter(is.na(date_time))



ggplot(data, aes(shape)) +
  geom_histogram( stat = "count")

