# 1. Variable prix
prix <- 100

# 2. Variable quantite
quantite <- 5

# 3. Calcul du total
total <- prix * quantite

# 4. Remise de 10 %
remise <- total * 0.10
total_apres_remise <- total - remise

# 5. Taxe de 15 %
taxe <- total_apres_remise * 0.15

# 6. Prix final
prix_final <- total_apres_remise + taxe

# Affichage du résultat
print(prix_final)

# Vérification des types de chaque variable
variables <- list(prix, quantite, total, remise, total_apres_remise, taxe, prix_final)
names(variables) <- c("prix","quantite","total","remise","total_apres_remise","taxe","prix_final")

sapply(variables, class)


# Créer un tableau avec la valeur et le type
resultat <- data.frame(
  Variable = names(variables),
  Valeur = unlist(variables),
  Type = sapply(variables, class)
)

# Afficher le tableau
print(resultat)

# Que se passe t-il si on divise le resultat par zero ?
Division_par_zero <- prix_final / 0
print(Division_par_zero)
#Reponse:  Si on divise le resultat par zero, on obtient Inf (infini) en R.