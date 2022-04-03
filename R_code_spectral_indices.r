library(raster)

install.packages("rgdal")

library(rgdal)

setwd("C:/Users/Giovanni/Desktop/lab")

#import the first file-> defor1_.jpg-> give it the name l1992

l1992<-brick ("C:\Users\Giovanni\Desktop\lab\defor1_.jpg")

plotRGB(l1992, r=1, g=2, b=3, stretch="lin")
 plot(ndvi1992, col=cl)

#layer1=NIR
#layer2=red
#layer3=green

#import the 2nd file

l2006<-brick ("C:\Users\Giovanni\Desktop\lab\defor2_.jpg")

#multiframe
par(mfrow=c(2,1))
plotRGB(l1992, r=1, g=2, b=3, stretch="lin")
plotRGB(l2006, r=1, g=2, b=3, stretch="lin")

# DVI Difference Vegetation Index
dvi1992 = l1992[[1]] - l1992[[2]]
# dvi1992 = l1992[[4]] - l1992[[3]]
dvi1992

cl <- colorRampPalette(c('darkblue','yellow','red','black'))(100)
# specifying a color scheme


# DVI Difference Vegetation Index
dvi20006 = l2006[[1]] - l2006[[2]]
# dvi2006 = l2006[[4]] - l2006[[3]]
dvi2006

plot(dvi2006, col=cl)

dvi_dif = dvi1992 - dvi2006

cld <- colorRampPalette(c('blue','white','red'))(100)

dvi1992 - dvi2006

#change name

difdvi<-dvi1992 - dvi2006

plot(difdvi, col=cld)

#day 2

# RANGEdvi 8 bit  -255, 255
#RANGE NDVI 1 -1
#Range DVI (16 bit) -65535, 65535
#Range NDVI 1 -1
#NDVI può esserer usato anche con immagini differenti con risoluzione radiometrica differente

library(raster)

setwd("C:/Users/Giovanni/Desktop/lab")

#import the two files defor_1 and defor_2

l1992<- brick("C:/Users/Giovanni/Desktop/lab/defor1_.jpg")

l2006<- brick("C:/Users/Giovanni/Desktop/lab/defor2_.jpg")

#calcolo DVI per calcolarlo usiamo solo NIR e red
#riflettanza in NIR-riflettanza in red

#components
#NDVI 1992
dvi1992 = l1992[[1]] - l1992[[2]]
ndvi1992 = dvi1992 / l1992[[1]] + l1992[[2]]

cl <- colorRampPalette(c('darkblue','yellow','red','black'))(100)
plot(ndvi1992, col=cl)
#multiframe with plot RGB up and ndvi1992 under

par(mfrow=c(2,1))

plotRGB(l1992, r=1, g=2, b=3, stretch="lin")
plot(ndvi1992, col=cl)

#2006
dvi2006 = l2006[[1]] - l2006[[2]]

ndvi2006 = dvi2006 / (l2006[[1]] + l2006[[2]])

#multiframe with ndvi1992 on top of the NDVI 2006

par(mfrow=c(2,1))

plot(ndvi1992, col=cl)

plot(ndvi2006, col=cl)

#install package RStoolbox

library(RStoolbox)

#automatic spectral indices by the spectralIndices function

si1992 <- spectralIndices(l1992, green=3, red=2, nir=1)

plot(si1992,col=cl)

#same thing with 2006

si2006 <- spectralIndices(l2006, green=3, red=2, nir=1)

plot(si2006,col=cl)

#install package rasterdiv
install.packages("rasterdiv")

library(rasterdiv)

#rasterdiv
plot(copNDVI)
