library(raster)

library(RStoolbox)

library(ggplot2)

library(patchwork)

setwd("C:/lab/esame")

#importo le immagini con la funzione brick
SN06 <- brick("sierranevada_2006.jpg")
SN07 <- brick("sierranevada_2007.jpg")
SN08 <- brick("sierranevada_2008.jpg")
SN09 <- brick("sierranevada_2009.jpg")
SN10 <- brick("sierranevada_2010.jpg")
SN11 <- brick("sierranevada_2011.jpg")
SN12 <- brick("sierranevada_2012.jpg")
SN13 <- brick("sierranevada_2013.jpg")
SN14 <- brick("sierranevada_2014.jpg")
SN15 <- brick("sierranevada_2015.jpg")
SN16 <- brick("sierranevada_2016.jpg")
SN17 <- brick("sierranevada_2017.jpg")
SN18 <- brick("sierranevada_2018.jpg")
SN19 <- brick("sierranevada_2019.jpg")
SN20 <- brick("sierranevada_2020.jpg")
SN21 <- brick("sierranevada_2021.jpg")


plotRGB(SN06, r=1,g=2,b=3, stretch="hist")
plotRGB(SN07, r=1,g=2,b=3, stretch="hist")
plotRGB(SN08, r=1,g=2,b=3, stretch="hist")
plotRGB(SN09, r=1,g=2,b=3, stretch="hist")
plotRGB(SN10, r=1,g=2,b=3, stretch="hist")
plotRGB(SN11, r=1,g=2,b=3, stretch="hist")
plotRGB(SN12, r=1,g=2,b=3, stretch="hist")
plotRGB(SN13, r=1,g=2,b=3, stretch="hist")
plotRGB(SN14, r=1,g=2,b=3, stretch="hist")
plotRGB(SN15, r=1,g=2,b=3, stretch="hist")
plotRGB(SN16, r=1,g=2,b=3, stretch="hist")
plotRGB(SN17, r=1,g=2,b=3, stretch="hist")
plotRGB(SN18, r=1,g=2,b=3, stretch="hist")
plotRGB(SN19, r=1,g=2,b=3, stretch="hist")
plotRGB(SN20, r=1,g=2,b=3, stretch="hist")
plotRGB(SN21, r=1,g=2,b=3, stretch="hist")

SN06C <- unsuperClass(SN06, nClasses=3)
SN07C <- unsuperClass(SN07, nClasses=3)
SN08C <- unsuperClass(SN08, nClasses=3)
SN09C <- unsuperClass(SN09, nClasses=3)
SN10C <- unsuperClass(SN10, nClasses=3)
SN11C <- unsuperClass(SN11, nClasses=3)
SN12C <- unsuperClass(SN12, nClasses=3)
SN13C <- unsuperClass(SN13, nClasses=3)
SN14C <- unsuperClass(SN14, nClasses=3)
SN15C <- unsuperClass(SN15, nClasses=3)
SN16C <- unsuperClass(SN16, nClasses=3)
SN17C <- unsuperClass(SN17, nClasses=3)
SN18C <- unsuperClass(SN18, nClasses=3)
SN19C <- unsuperClass(SN19, nClasses=3)
SN20C <- unsuperClass(SN20, nClasses=3)
SN21C <- unsuperClass(SN21, nClasses=3)


SNCL <-colorRampPalette(c("cornsilk3", "white","forestgreen"))(100) 

plot(SN06C$map, col=SNCL)
freq(SN06C$map)

# 113405 neve, 280393 roccia, 124602 altro

plot(SN07C$map, col=SNCL)
freq(SN07C$map)

# 72037 neve, 201383 roccia, 244980 altro

plot(SN08C$map, col=SNCL)
freq(SN08C$map)

# 94584 neve, 232733 roccia, 191083 altro

plot(SN09C$map, col=SNCL)
freq(SN09C$map)

#76493- neve, 255367 roccia, 186540 altro

plot(SN10C$map, col=SNCL)
freq(SN10C$map)
# 110418- neve, 227924 roccia, 80058 altro

plot(SN11C$map, col=SNCL)
freq(SN11C$map)

# 98003 neve, 244069 roccia, 176328 altro

plot(SN12C$map, col=SNCL)
freq(SN12C$map)

#  64641 neve, 256544 roccia, 197215 altro 

plot(SN13C$map, col=SNCL)
freq(SN13C$map)
# 73134- neve, 251149 roccia, 194117 altro

plot(SN14C$map, col=SNCL)
freq(SN14C$map)

# 88185- neve, 238172 roccia, 192043 altro

plot(SN15C$map, col=SNCL)
freq(SN15C$map)
     value  count

# 159855 neve, 175213 roccia, 183332 altro

plot(SN16C$map, col=SNCL)
freq(SN16C$map)

 # 78889 neve,  240023 roccia, 199488 altro

plot(SN17C$map, col=SNCL)
freq(SN17C$map)

# 106889 neve, 201995 roccia, 209516 altro

plot(SN18C$map, col=SNCL)
freq(SN18C$map)

#  85761- neve, 227749 roccia, 204890 altro

plot(SN19C$map, col=SNCL)
freq(SN19C$map)

# 104650 neve, 219519 roccia, 194231 altro

plot(SN20C$map, col=SNCL)
freq(SN20C$map)

# 91695- neve, 220712 roccia, 205993 altro

plot(SN21C$map, col=SNCL)
freq(SN21C$map)

# 84158- neve, 246180 roccia, 188062 altro

totarea<- 518400

#calcolo della proporzione della neve sull'area totale

prop_snow_06 <- 113405/totarea
[1] 0.2187596

prop_snow_07 <- 72037/totarea
[1] 0.1389603

prop_snow_08 <- 94584/totarea
[1] 0.1824537

prop_snow_09 <- 76493/totarea
[1] 0.1475559

prop_snow_10 <- 110418/totarea
[1] 0.2129977

prop_snow_11 <- 98003/totarea
[1] 0.189049

prop_snow_12 <- 64641/totarea
[1] 0.1246933

prop_snow_13 <- 73134/totarea
[1] 0.1410764

prop_snow_14 <- 88185/totarea
[1] 0.17011

prop_snow_15 <- 159855/totarea

[1] 0.3083623 #dato falso

prop_snow_16 <- 78889/totarea
[1] 0.1521779

prop_snow_17 <- 106889/totarea

[1] 0.2061902

prop_snow_18 <- 85761/totarea
[1] 0.165434

prop_snow_19 <- 104650/totarea
[1] 0.2018711

prop_snow_20 <- 91695/totarea
[1] 0.1768808

prop_snow_21 <- 84158/totarea

[1] 0.1623418

#valore più corretto del 2015, assumendo che sia il più inferiore da definizione, frequenza zone innevat del 2015= 32200 pixel
pro_snow_15 <-32200/totarea

[1] 0.0621142

#calcolo la percentuale

perc_snow_06 <- 113405*100/totarea
[1] 21.87596

perc_snow_07 <- 72037*100/totarea
13.89603

perc_snow_08 <- 94584*100/totarea
[1] 18.24537

perc_snow_09 <- 76493*100/totarea
[1] 14.75559

perc_snow_10 <- 110418*100/totarea
[1] 21.29977

perc_snow_11 <- 98003*100/totarea
[1] 18.9049

perc_snow_12 <- 64641*100/totarea
[1] 12.46933

perc_snow_13 <- 73134*100/totarea
[1] 14.10764

perc_snow_14 <- 88185*100/totarea
[1] 17.011

perc_snow_15 <- 159855*100/totarea
[1] 30.83623

perc_snow_16 <- 78889*100/totarea
[1] 15.21779

perc_snow_17 <- 106889*100/totarea
[1] 20.61902

perc_snow_18 <- 85761*100/totarea
[1] 16.5434

perc_snow_19 <- 104650*100/totarea
[1] 20.18711

perc_snow_20 <- 91695*100/totarea
[1] 17.68808

perc_snow_21 <- 84158*100/totarea
[1] 16.23418

per_snow_15 <- 32200*100/totarea



#costruisco un dataframe inserendo gli anni di studio e la percentuale nevosa per ogni anno.

ANNO=c(2006, 2007, 2008, 2009, 2010, 2011, 2012 ,2013, 2014, 2015, 2016, 2017, 2018, 2019, 2020, 2021)
NEVE=c(21.88, 13.9, 18.25, 14.76, 21.3, 18.90, 12.47, 14.11, 17.01, 30.83, 15.22, 20.62, 16.54, 20.19, 17.69, 16.23)
SIERRA_NEVADA= data.frame (ANNO, NEVE)

graph<-ggplot(SIERRA_NEVADA, aes(x=ANNO)) +
geom_line(aes(y=NEVE, color= "red"),size=5) + 
theme_bw(base_size=25) +
ggtitle("Variazione neve nel tempo") + xlab("ANNO") + ylab("NEVE")

#costruisco lo stesso dataframe, ma con la percentuale più reale

ANNO=c(2006, 2007, 2008, 2009, 2010, 2011, 2012 ,2013, 2014, 2015, 2016, 2017, 2018, 2019, 2020, 2021)
NEVE_C=c(21.88, 13.9, 18.25, 14.76, 21.3, 18.90, 12.47, 14.11, 17.01, 11.55, 15.22, 20.62, 16.54, 20.19, 17.69, 16.23)
graph_adj<-ggplot(SIERRA_NEVADA, aes(x=ANNO)) +
geom_line(aes(y=NEVE_C, color="white"),size=5) + 
theme_bw(base_size=25) +
ggtitle("Variazione neve nel tempo") + xlab("ANNO") + ylab("NEVE")

graph+graph_adj
