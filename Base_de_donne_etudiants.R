# 1. Création du data frame
etudiants <- data.frame(
  Nom = c("Alice", "Bob", "Charlie", "Diana"),
  Note_Maths = c(85, 90, 78, 95),
  Note_Info = c(88, 85, 92, 90),
  Present = c(TRUE, TRUE, FALSE, TRUE)
)

cat("Data frame initial :\n")
print(etudiants)

# 2. Ajouter une colonne moyenne
etudiants$Moyenne <- rowMeans(etudiants[, c("Note_Maths", "Note_Info")])
cat("\nData frame avec moyenne :\n")
print(etudiants)

# 3. Étudiant avec la meilleure moyenne
meilleure_moyenne <- etudiants[which.max(etudiants$Moyenne), ]
cat("\nÉtudiant avec la meilleure moyenne :\n")
print(meilleure_moyenne)

# 4. Filtrer uniquement les étudiants présents
etudiants_present <- subset(etudiants, Present == TRUE)
cat("\nÉtudiants présents :\n")
print(etudiants_present)

# 5. Moyenne de classe en maths
moyenne_maths <- mean(etudiants$Note_Maths)
cat("\nMoyenne de classe en Maths :", moyenne_maths, "\n")

# 6. Ajouter une colonne mention
etudiants$Mention <- ifelse(etudiants$Moyenne >= 90, "Excellent",
                            ifelse(etudiants$Moyenne >= 80, "Bien", "Passable"))
cat("\nData frame final avec mention :\n")
print(etudiants)