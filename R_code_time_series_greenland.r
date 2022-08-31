#Time series analysis of Greenland LST data

library(raster)

setwd("C:/Users/Giovanni/Desktop/lab/Greenland")

#first, the common function #brick, then other #function

lst2000 <- raster("lst_2000.tif")

plot(lst2000)

#import all the data

lst2005 <- raster("lst_2005.tif")

lst2010 <- raster("lst_2010.tif")

lst2015 <- raster("lst_2015.tif")

 cl <- colorRampPalette(c("blue", "light blue","white","red"))(100)
 
 #multiframe
 par(mfrow=c(2,2))
 
plot(lst2000,col=cl)
plot(lst2005,col=cl)
plot(lst2010,col=cl)
plot(lst2015,col=cl)

#import the whole set altogether

rlist <- list.files(pattern="lst")

import <- lapply(rlist,raster)

tgr <- stack(import) 
#prendiamo import e lo mettiamo tutto insieme

plot(tgr, col=cl)

plot(tgr[[1]], col=cl)

plotRGB(tgr, r=1, g=2, b=3, stretch="lin")
