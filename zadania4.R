library(tidyverse)
mpg
?mpg

# zadanie 4-1

# zbiór mpg ma 11 zmiennych 
# zbiór mpg ma 234 obserwacje
# engine displacement to pojemność silnika, miles per gallon to amerykańska wersja litrów na 100 km
# zmienne:
# manufacturer - producent
# model - modelu samochodu
# displ - pojemność silnika
# year - rocznik
# cyl - liczba cylindrów
# trans - typ skrzyni biegów (automat i manual, zapewne)
# drv - napęd; f - na przednie koła; r - na tylne koła, 4 = na 4
# cty - ile mil przejadę w mieście na 4.55 litra paliwa
# hwy - jak wyżej, tylko na autostradzie
# fl - typ paliwa
# class - "typ" samochodu


# zadanie 4-2
ggplot(data = mpg) +  
  geom_point(mapping = aes(x = displ, y = cty))


# zadanie 4-3 
ggplot(data = mpg) +
  geom_bar(mapping = aes(x = class, fill = class)) +
  labs(title = "Klasy samochodów", x = "Klasa", y = "Liczebność")


# zadanie 4-4
ggplot(data = mpg) +
  geom_histogram(mapping = aes(displ), bins = 11) +
  labs(title = "Rozkład pojemności silników samochodów", x = "pojemność silnika", y = "liczebność")


# zadanie 4-5
ggplot(data = mpg, aes(x = class, y = displ)) +
  geom_boxplot() +
  coord_flip()  +
  labs(title = "Zależność między pojemnością silnika a klasą samochodu", x = "Klasa", y = "Pojemność")
