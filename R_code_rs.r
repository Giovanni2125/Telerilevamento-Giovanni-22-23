#Il primo script di telerilevamento

#install packages (raster)
library(raster)

#setting the folder of work

setwd("C:/Users/Giovanni/Desktop/lab")
#import the picture
landsat2011<- brick("C:/Users/Giovanni/Desktop/lab/p224r63_2011.grd")
#plot 
plot(landsat2011)
cl<- colorRampPalette(c("black", "grey", "light grey")) (100)
#landsat ETM+
#b1= blue
#b2=green
#b3=red
#b4=infrared near NTR(NIR)
#plot of the blue band B1_sre
plot(l2011$B1_sre)
#or
plot(l2011[[1]])
#plot b1 from blue to dark blue
clb <- colorRampPalette(c("dark blue", "blue", "light blue")) (100)
plot(l2011$B1_sre, col=clb) 
#plot b2 from dark green to light green

clg <- colorRampPalette(c("dark green", "green", "light green")) (100)

plot(l2011$B2_sre, col=clg) 

#multiframe
par(mfrow=c(1,2))
plot(l2011$B1_sre, col=clb)
plot(l2011$B2_sre, col=clg)

# export multiframe plot
pdf("multiframe.pdf")
par(mfrow=c(1,2))
plot(l2011$B1_sre, col=clb)
plot(l2011$B2_sre, col=clg)
dev.off()

#exercise revert the multiframe
par(mfrow=c(1,2))
plot(l2011$B1_sre, col=clb)
plot(l2011$B2_sre, col=clg)

par(mfrow=c(2,1))
plot(l2011$B1_sre, col=clb)
plot(l2011$B2_sre, col=clg)


# let's plot the first four bands

par(mfrow=c(2,2))

# blue

plot(l2011$B1_sre, col=clb) 

# green

plot(l2011$B2_sre, col=clg) 

# red

clr <- colorRampPalette(c("dark red", "red", "pink")) (100)

plot(l2011$B3_sre, col=clr)

# NIR

clnir <- colorRampPalette(c("red", "orange", "yellow")) (100)

plot(l2011$B4_sre, col=clnir)

#plot of l2011 in the NIR channel



plot(l2011$B4_sre)

clnir <- colorRampPalette(c("red", "orange", "yellow")) (100)

plot(l2011$B4_sre, col=clnir)
#or
plot(l2011[[4]])

#landsat ETM+
#b1=blue
#b2=red
#b3=green
#b4=NIR

#plot RGB layers

plotRGB(l2011, r=3, g=2, b=1, stretch="lin")

plotRGB(l2011, r=4, g=3, b=2, stretch="lin")

plotRGB(l2011, r=3, g=4, b=2, stretch="lin")

plotRGB(l2011, r=3, g=2, b=4, stretch="lin")

# Exercise: build a multiframe with visible RGB
# (linear stretch) on top of false colours
# (histogram stretch)
par(mfrow=c(1,2))
par(mfrow=c(2,1))


plotRGB(l2011, r=3, g=2, b=1, stretch="lin")


plotRGB(l2011, r=3, g=4, b=2, stretch="hist")

# Exercise: upload the image from 1988
l1988<- brick("C:/Users/Giovanni/Desktop/lab/p224r63_1988.grd")

# compare the two images 

par(mfrow=c(2,1))
plotRGB(l2011, r=4, g=3, b=2, stretch="lin")
plotRGB(l1988, r=4, g=3, b=2, stretch="lin")

       
