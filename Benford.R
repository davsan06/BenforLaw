############################################################
###                     Ley de Benford                  ####
############################################################

# Se muestra la dependencia explicita de las librerias utilizadas

# Cargamos los datos que queremos analizar
city_data <- maps::world.cities 

############ POPULATION WORLD CITIES ###########################
population <- as.character(city_data$pop) # Extraemos la info de la población

# Extraemos la primera cifra
first_digit <- stringr::str_extract(population, "\\d{1}")

# Hacemos un histograma de la frecuencia de aparición de una determinada cifra
# en el array
hist(as.numeric(first_digit), include.lowest = TRUE, main = "Frecuencia como primeros dígitos (Población)", 
     col = rgb(0, 1, 0, 0.3), xlab = "Primer dígito", ylab = "Frecuencia", xaxt = 'n')
axis(side=1, at=seq(0.75,8.75, 1), labels=seq(1,9,1))

################### POPULATION SPAIN CITIES #####################
population <- as.character(city_data$pop[city_data$country.etc == "Spain"])
first_digit <- stringr::str_extract(population, "\\d{1}")
hist(as.numeric(first_digit), include.lowest = TRUE, main = "Frecuencia como primeros dígitos (Población ESP)", 
     col = rgb(0, 1, 0, 0.3), xlab = "Primer dígito", ylab = "Frecuencia", xaxt = 'n')
axis(side=1, at=seq(0.75,8.75, 1), labels=seq(1,9,1))
# La distribución no es tan clara porque el número de ciudades consideradas es reducido

############# LATITUDE WORLD CITIES #############################

# Prueba: ¿se cumple la ley con la distribución de la latitud? *NO DEBERÍA*
lat <- as.character(city_data$lat) # Extraemos la info de la latitud

# Extraemos la primera cifra
first_digit <- stringr::str_extract(lat, "\\d{1}")

# Hacemos un histograma de la frecuencia de aparición de una determinada cifra
# en el array
hist(as.numeric(first_digit), include.lowest = TRUE, main = "Frecuencia como primeros dígitos (Latitud)", 
     col = rgb(0, 1, 0, 0.3), xlab = "Primer dígito", ylab = "Frecuencia", xaxt = 'n')
axis(side=1, at=seq(0.75,8.75, 1), labels=seq(1,9,1))