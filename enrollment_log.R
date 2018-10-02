# Title   : Screening and Enrollment log generator
# Author  : Sergio Castro
# Created : 09/2018
# Comment : input:  (1) TSV document from the interactive kiosk
#           output: (1) Data table with Screening and Enrollment Log

# List of packages for session
options( java.parameters = "-Xmx6g" )
.packages = c('plyr','dplyr','data.table')
# Install CRAN packages (if not already installed)
.inst = .packages %in% installed.packages()
if(length(.packages[!.inst]) > 0) install.packages(.packages[!.inst])
# Load packages into session 
invisible(lapply(.packages, library, character.only=TRUE))

library(plyr)
# Screening
# Load and prepare database
database=read.delim("D:/Informacion/Documents/Dartmouth/Data/Resultados_Diada_19-09-2018.xls")
database=within(database, rm(X))
database=as.data.frame(database) #Confirm if this step is necessary

# Set columns names
setnames(database, c("id", "cedula",    "date",    "screen_dep",    "phq9",    "audit",    "age",    "sex",    "oh",    "depression"))

# Set date
database$date=as.Date.factor(database$date,"%Y-%m-%d")
database=subset(database, date < as.Date("2018-09-01")) ##año-mes-dia

# Get gender description
sexdf=database[order(database$cedula),]
sexdf=sexdf[!duplicated(sexdf$cedula),]
table(sexdf$sex)


enrolment=data.frame(total=nrow(count(database,"cedula")),
                     whooley=as.numeric(table(database$screen_dep)[2]),
                     auditc=as.numeric(table(ifelse(database$audit > 3, "yes", "no"))[2]),
                     dualscreening=as.numeric(table(ifelse(database$audit > 3 & database$screen_dep == 1, "yes", "no"))[2]),
                     phq10=as.numeric(table(ifelse(database$phq9 > 9, "yes", "no"))[2]),
                     phq5=as.numeric(table(ifelse(database$phq9 > 4, "yes", "no"))[2]),
                     depression=as.numeric(table(ifelse(database$depression == "", "no", "yes"))[2]),
                     audit=as.numeric(table(ifelse(((database$audit > 7 & database$sex=="M")|(database$audit > 5 & database$sex=="F")), "yes", "no"))[2]),
                     alcohol=as.numeric(table(ifelse(database$oh == "", "no", "yes"))[2]),
                     dualdiagnosis=as.numeric(table(ifelse(database$depression != "" & database$oh != "","no","yes"))[1]),
                     stringsAsFactors=FALSE)

write.csv(x = enrolment,file = "C:/Users/SergioMC/Documents/Dartmouth/Research/enrollment.csv")


# database$dualdiagnosis=ifelse(database$depression != "" & database$oh != "","yes","no")
# database$poh = ifelse(database$audit > 6, "yes", "no")
# as.data.frame(table(database$poh))


##



##### Load registry
registry=read.csv("C:/Users/SergioMC/Documents/Dartmouth/Research/registry1.csv",encoding = "UTF-8")

table(registry$Diagnóstico)


dbtest=database

dbtest$date=as.Date(dbtest$date,"%d/%m/%Y")

dbtest$date[1]

dbtMarch=subset(dbtest, date < as.Date("2018-03-01"))

as.data.frame(table(dbtMarch$pdep))
as.data.frame(table(dbtMarch$poh))
as.data.frame(table(dbtMarch$doublescreen))
as.data.frame(table(dbtMarch$elegible.dep))

