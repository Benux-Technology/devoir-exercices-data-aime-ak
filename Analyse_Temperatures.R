# 1. Températures
temperatures <- c(22, 24, 19, 25, 23, 26, 21)
jours <- c("Lundi","Mardi","Mercredi","Jeudi","Vendredi","Samedi","Dimanche")
names(temperatures) <- jours

# 2. Moyenne
moyenne <- mean(temperatures)
cat("Moyenne :", moyenne, "\n")

# 3. Min et Max
cat("Température minimale :", min(temperatures), "\n")
cat("Température maximale :", max(temperatures), "\n")

# 4. Températures > 23°C
temp_sup23 <- temperatures[temperatures > 23]
cat("Températures > 23°C :", paste(temp_sup23, collapse = ", "), "\n")

# 5. Conversion en Fahrenheit
temperatures_F <- temperatures * 9/5 + 32
names(temperatures_F) <- jours
cat("Températures en °F :\n")
print(temperatures_F)

