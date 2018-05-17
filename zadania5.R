library(ggplot2)
library(dplyr)

# Zad 5-1
library(readr)
movies <- read_csv("movies.csv")
View(movies)


# Zad 5-2
filter(movies, year == 2005)


# Zad 5-3
movies %>% 
  select(title, year, budget) %>% 
  arrange(desc(budget))


# Zad 5-4
filter(movies, Animation == 1, year >=1990 & year < 2000) %>%
  arrange(desc(rating))


# Zad 5-5
movies %>% 
  filter(Drama == 1) %>% 
  arrange(desc(length))


#Zad 5-6
movies %>%
  group_by(mpaa) %>% 
  summarise(srednia = mean(rating), odchylenie = mad(rating))


