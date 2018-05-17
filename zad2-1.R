# 1. wektory kwartałów
kwartal_1 <- c("Styczeń", "Luty", "Marzec")
kwartal_2 <- c("Kwiecień", "Maj", "Czerwiec")
kwartal_3 <- c("Lipiec", "Sierpień", "Wrzesień")
kwartal_4 <- c("Październik", "Listopad", "Grudzień")

# 2. wektor roku
rok <- c(kwartal_1, kwartal_2, kwartal_3, kwartal_4)

# 3. dwa pierwsze miesiące roku
rok[c(1, 2)]

# 4. ostatnie pięć miesięcy roku
rok[c(8:12)]

# 5. miesiące nieparzyste
rok[seq(1, 12, 2)]

# 6. ilość liter każdego miesiąca
nchar(rok)

# 7. średnia i odchylenie standardowe ilośi liter dla wszystkich miesięcy w roku
l_liter <- nchar(rok)
mean(l_liter)
sd(l_liter)

# 7. średnia i odchylenie standardowe ilośi liter dla miesięcy zimowych
zima <- rok[c(1, 2, 3, 12)]
liter_zima <- nchar(zima)
mean(liter_zima)
sd(liter_zima)