#Il primo script di telerilevamento

#install packages (raster)
library(raster)

#settaggio cartella di lavoro

setwd("C:/Users/Giovanni/Desktop/lab")
#importare l'immagine
landsat2011<- brick("C:/Users/Giovanni/Desktop/lab/p224r63_2011.grd")
#plot 
plot(landsat2011)
cl<- colorRampPalette(c("black", "grey", "light grey")) (100)
#landsat ETM+
#b1= blu
#b2=verde
#b3=rosso
#b4=infrarosso vicino NTR
#plot della banda blu B1_sre
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



