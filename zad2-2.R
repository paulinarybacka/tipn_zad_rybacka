today <- Sys.Date()
deadline <- as.Date("2022-06-30") # można zmienić w razie poślizgu

hours <- as.numeric(difftime(deadline, today), units="hours")
additional <- as.numeric(difftime(strptime("23:59", format = "%H:%M"), 
                                  strptime("15:32", format = "%H:%M")), units="hours") # do konca dzisiaj
hours <- hours + additional

paste("do końca studiów zostało", hours, "godzin")
