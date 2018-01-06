# Copyright ? 2016 by Sergio Castro
# All rights reserved. This document or any portion thereof
# may not be reproduced or used in any manner whatsoever
# without the express written permission of the author.
#
# Title   : Risk Eating Disorders in Indigenous Population from Colombia
# Author  : Sergio Castro
# Created : 12/09/2016
# Comment : input:  (1) DTA database from indigenous adults with Risk of eating disorders
#           output: (1) database ready to go to WEKA

# List of packages for session
options( java.parameters = "-Xmx2g" )
.packages = c('foreign','RWeka','data.table','readstata13')
# Install CRAN packages (if not already installed)
.inst = .packages %in% installed.packages()
if(length(.packages[!.inst]) > 0) install.packages(.packages[!.inst])
# Load packages into session 
invisible(lapply(.packages, library, character.only=TRUE))

db_nativos = read.dta13(file = "c:/Users/SergioMC/Dropbox/BD ENSM/Adultos.dta")

if (db_nativos$m2_p1="Ind<ed>gena") {
  mean(db_nativos$age)
}

d<-db_nativos[(db_nativos$age<="44"),]
mean(d$age)
d1<-d[(d$m2_p1=="Ind<ed>gena"),]
library(psych)
describe (d$age)
d1<-d1[(d$diferenciador=="NA"),]
if (d1$m2_p1="Ind<ed>gena") {
  e=mean(d1$age)
}
mean


