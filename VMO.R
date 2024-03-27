install.packages("tidyverse")
library(tidyverse)
library(dplyr)
library(ggplot2)

#Fonksiyon Örnekleri
veri <- data.frame(
  "Grup" = c("A", "A", "B", "B", "C", "C"),
  "Skor" = c(10, 12, 8, 9, 11, 13)
)

# Veri setinin özet istatistiklerini görüntüleme
summary(veri)

# Gruplara göre ortalama skorları hesaplama
ortalama_skor <- tapply(veri$Skor, veri$Grup, mean)
print(ortalama_skor)

# Gruplara göre kutu grafiği çizme
boxplot(Skor ~ Grup, data = veri, main = "Gruplara Göre Skorlar")