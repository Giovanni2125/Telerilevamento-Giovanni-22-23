library(raster)

library(RStoolbox)

setwd("C:/lab/esame")

#importo le immagini con la funzione brick

col_86 <-brick("col_1986.jpg")
col_89 <-brick("col_1989.jpg")
col_95 <-brick("col_1995.jpg")
col_00 <-brick("col_2000.jpg")
col_03 <-brick("col_2003.jpg")
col_06 <-brick("col_2006.jpg")
col_08 <-brick("col_2008.jpg")
col_09 <-brick("col_2009.jpg")
col_11 <-brick("col_2011.jpg")
col_13 <-brick("col_2013.jpg")
col_19 <-brick("col_2019.jpg")

#Plotto tramite la funzione "plotRGB" le immagini con colori naturali, in questo caso con la banda del rosso è la prima, quella del verde la seconda e quella del blu la terza
#Uso stretch "hist" per acuire il contrasto di colore

plotRGB(col_86, r=1,g=2,b=3, stretch="hist")
plotRGB(col_89, r=1,g=2,b=3, stretch="hist")
plotRGB(col_95, r=1,g=2,b=3, stretch="hist")
plotRGB(col_00, r=1,g=2,b=3, stretch="hist")
plotRGB(col_03, r=1,g=2,b=3, stretch="hist")
plotRGB(col_06, r=1,g=2,b=3, stretch="hist")
plotRGB(col_08, r=1,g=2,b=3, stretch="hist")
plotRGB(col_09, r=1,g=2,b=3, stretch="hist")
plotRGB(col_13, r=1,g=2,b=3, stretch="hist")
plotRGB(col_14, r=1,g=2,b=3, stretch="hist")
plotRGB(col_19, r=1,g=2,b=3, stretch="hist")

# uso la funzione unsuperClass per classificare le aree in 3 classi diverse
COL86C <- unsuperClass(col_86, nClasses=3)
C0L89C <- unsuperClass(col_89, nClasses=3)
COL95C <- unsuperClass(col_95, nClasses=3)
COL00C <- unsuperClass(col_00, nClasses=3)
COL03C <- unsuperClass(col_03, nClasses=3)
COL06C <- unsuperClass(col_06, nClasses=3)
COL08C <- unsuperClass(col_08, nClasses=3)
COL09C <- unsuperClass(col_09, nClasses=3)
COL11C <- unsuperClass(col_11, nClasses=3)
COL13C <- unsuperClass(col_13, nClasses=3)
COL14C <- unsuperClass(col_13, nClasses=3)
COL19C <- unsuperClass(col_19, nClasses=3)

#Creo tramite la funzione "colorRampPalette()" un set di colori che rappresenti con il bianco il ghiacciaio, con il blu l'acqua e in verde le zone ricoperte da vegetazione 

CLGL <-colorRampPalette(c("white", "blue","green"))(100)

#frequenze
plot(COL86C$map, col=CLGL)
freq(COL86C$map)
#ghiaccio 129651 pixels mare 120603 pixels terre emerse  95346 pixels

plot(COL89C$map, col=CLGL)
freq(COL89C$map)

plot(COL95C$map, col=CLGL)
freq(COL95C$map)
#[1,]     1 103401 pixels
[2,]     2 124875 pixels
[3,]     3 117324 pixels


plot(COL00C$map, col=CLGL)
freq(COL00C$map)
[1,]     1 155741 pixels
[2,]     2  97160 pixels
[3,]     3  92699pixels

plot(COL03C$map, col=CLGL)
freq(COL03C$map)
#[1,]     1 112319 pixels
[2,]     2  81269 pixels
[3,]     3 152012 pixels

plot(COL06C$map, col=CLGL)
freq(COL06C$map)
#[1,]     1  77590 pixels
[2,]     2  76732 pixels
[3,]     3 191278 pixels

plot(COL09C$map, col=CLGL)
freq(COL09C$map)
[1,]     1 107292 pixels
[2,]     2 128203 pixels
[3,]     3 110105 pixels


plot(COL11C$map, col=CLGL)
freq(COL11C$map)
[1,]     1  65942 pixels
[2,]     2  94278 pixels
[3,]     3 185380 pixels
plot(COL13C$map, col=CLGL)
freq(COL13C$map)
[1,]     1  93267 pixels
[2,]     2 130589 pixels
[3,]     3 121744 pixels

plot(COL14C$map, col=CLGL)
freq(COL14C$map)
 1 139434 pixels
[2,]     2 115376 pixels
[3,]     3  90790 pixels

plot(COL19C$map, col=CLGL)
freq(COL19C$map)
[1,]     1  95378 pixels
[2,]     2 137108 pixels
[3,]     3 113114 pixels


totpix <- 345.600


#proporzione delle classi

prop_glacier_86 <- 129.651/totpix 
prop_glacier_86=0,375
prop_glacier_89 <-
prop_glacier_95 <-
prop_glacier_00 <-
prop_glacier_03 <-
prop_glacier_06 <-
prop_glacier_08 <-
prop_glacier_09 <-
prop_glacier_11 <-
prop_glacier_13 <-
prop_glacier_19 <-


#percentuale
perc_glacier_86 <-
perc_glacier_89 <-
perc_glacier_95 <-
perc_glacier_00 <-
perc_glacier_03 <-
perc_glacier_06 <-
perc_glacier_08 <-
perc_glacier_09 <-
perc_glacier_11 <-
perc_glacier_13 <-
perc_glacier_19 <-

#let's build a dataframe with our data

#columns(fields)

class <- c("Forest", "Agricolture")

data.frame(class, percent_1992, percent_2006)























