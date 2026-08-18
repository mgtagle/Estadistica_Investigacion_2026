# Marco
# Matrícula
# 18/08/2026

# Importar datos----

# Función read.csv importa datos de excel a R 

IE <- read.csv("Datos/Crudos/vivero.csv", header = T)
IE$Tratamiento <- as.factor(IE$Tratamiento)

# Revisar ----
# Revisar solo una porción de datos
head(IE) # Primeras filas de la BD IE
tail(IE) # Últimas filas de la BD IE

# Graficar ----

hist(IE$IE,
     main = "",
     xlab = "Índice",
     ylab = "Frecuencia",
     ylim = c(0,12),
     col = "lightblue")

# Normalidad datos ----

shapiro.test(IE$IE)

mean(IE$IE)
sd(IE$IE)
var(IE$IE)
fivenum(IE$IE)

# Boxplot ----
boxplot(IE$IE ~ IE$Tratamiento,
        col = "red",
        xlab = "Tramamientos",
        ylab = "Índice")

# Revisar homogeneidad de varianzas----
bartlett.test(IE$IE ~ IE$Tratamiento)
