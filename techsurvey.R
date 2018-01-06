# Copyright ? 2016 by Sergio Castro
# All rights reserved. This document or any portion thereof
# may not be reproduced or used in any manner whatsoever
# without the express written permission of the author.
#
# Title   : Temporal Data Tech Survey
# Author  : Sergio Castro
# Created : 12/09/2016
# Comment : input:  (1) DTA database from indigenous adults with Risk of eating disorders
#           output: (1) database ready to go to WEKA

# List of packages for session
options( java.parameters = "-Xmx2g" )
.packages = c('foreign','data.table','base')
# Install CRAN packages (if not already installed)
.inst = .packages %in% installed.packages()
if(length(.packages[!.inst]) > 0) install.packages(.packages[!.inst])
# Load packages into session 
invisible(lapply(.packages, library, character.only=TRUE))


# Load database
# b=read.csv(file = 'C:/Users/SergioMC/Downloads/EncuestaDeTecnologa_DATA_LABELS_2016-12-15_1406.csv')
# Load the information from the survey
b=read.csv(file = 'C:/Users/SergioMC/Downloads/EncuestaDeTecnologa_DATA_LABELS_2017-04-19_1340.csv')
#Extract only the data from the first columns
c=b[,1:6]
#Turn tage data into numeric tokens
c[,5]=as.numeric(x = c[,5])
#create the variable for age groups
c[,7]=1
c[,7] = cut(c[,5],
            breaks = c(-Inf,30,45,60,Inf),
            labels = c("18-30","30-45","45-60",">60"),
            right = FALSE
)
#turn the data of the places into numeric tokens
c[,4]=as.numeric(x=c[,4])

#learn the places and identify which are the numbers
table(b[,4])
table(as.numeric(b[,4]))

#select the place
#Armero
d=c[which(c[,4]==1),]
table(d[,7],d[,6])
#Chaparral
d=c[which(c[,4]==2),]
table(d[,7],d[,6])
#Lerida
d=c[which(c[,4]==3),]
table(d[,7],d[,6])
#Duitama
d=c[which(c[,4]==4),]
table(d[,7],d[,6])
#Santa Rosa
d=c[which(c[,4]==5),]
table(d[,7],d[,6])

#table age/gender
#Duitama
table(d[,7],d[,6])


