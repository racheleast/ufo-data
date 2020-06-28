



library(tidyverse)




data <- read_csv("nuforc_reports.csv")




shape <- data %>% group_by(shape) %>% summarise(count = n()) %>% arrange(desc(count))



ggplot(shape, aes(x = reorder(shape, -count), y = count)) + geom_col() +
  theme(axis.text.x = element_text(angle = 90, hjust = 1, vjust = .35))




states <- data %>% group_by(state) %>% summarise(count = n()) %>% arrange(desc(count))


ggplot(states, aes(x = reorder(state, -count), y = count)) + geom_col() +
  theme(axis.text.x = element_text(angle = 90, hjust = 1, vjust = .35))

