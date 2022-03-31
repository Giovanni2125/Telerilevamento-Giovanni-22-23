library(raster)

install.packages("rgdal")

library(rgdal)

setwd("C:/Users/Giovanni/Desktop/lab")

#import the first file-> defor1_.jpg-> give it the name l1992

l1992<-brick ("C:\Users\Giovanni\Desktop\lab\defor1_.jpg")

plotRGB(l1992, r=1, g=2, b=3, stretch="lin")

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

# RANGEdvi 8 bit 255 -2555
#RANGE NDVI 1 -1
#Range DVI (16 bit) 65535 -65535
#Range NDVI 1 -1
#NDVI può esserer usato anche con immagini differenti con risoluzione radiometrica differente
