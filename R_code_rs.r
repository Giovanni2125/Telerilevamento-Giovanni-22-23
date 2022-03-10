Il primo script di telerilevamento

#install packages (raster)
library(raster)

#settaggio cartella di lavoro

setwd("C:/Users/Giovanni/Desktop/lab")
#importare l'immagine
landsat2011<- brick("C:/Users/Giovanni/Desktop/lab/p224r63_2011.grd")
#plot 
plot(landsat2011)
cl<- colorRampPalette(c("black", "grey", "light grey")) (100)
