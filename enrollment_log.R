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

# Load data from September alternative data table
dbseptember=read.csv("D:/Informacion/Documents/Dartmouth/Data/Resultados_Diada_12-09-2019.csv", encoding = "UTF-8")
setnames(dbseptember, c("id", "site", "cedula",    "date",    "screen_dep",    "phq9",    "audit",    "age",    "sex",    "oh",    "depression"))

# Merge both data tables
database = rbind(database, dbseptember)

# Clean database and remove input errors
database =database[!(database$id=="2147483647" | database$id=="123456" | database$sex=="" | database$id<=0),]

# Fix date format
database$date=gsub("\\d\\d\\:\\d\\d:\\d\\d", "",x = database$date)

# Create a copy just in case
database2=database

# Set date
database$date=as.Date.factor(database$date,"%Y-%m-%d")
database=subset(database, date < as.Date("2018-09-01")) ##año-mes-dia

# Get gender description
sexdf=database[order(database$cedula),]
sexdf=sexdf[!duplicated(sexdf$cedula),]
table(sexdf$sex)

# Here I have many alternatives to get the Enrolment Log I want
# Enrolment Log by last positive: Keep only one kiosk entry per cedula, keep only the last positive screening in the kiosk
database= setDT(database)[, .SD[which.max(screen_dep)], cedula]

# Enrolment Log by last kiosk entry: 
# Alternative 1: Keep only one kiosk entry per cedula, keep only the last kiosk entry
database=database %>%
  group_by(cedula) %>%
  slice(which.max(as.Date(database$date, "%Y-%m-%d")))

# Alternative 2: Keep only one kiosk entry per cedula, keep only the last kiosk entry
database =database[!(database$date==""),]
database= setDT(database)[, .SD[which.max(date)], cedula]


# Create the table
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

# Get the total number of new positive screenings per site in the last week
datab=subset(database, (date  > as.Date("2019-11-27") & date <= as.Date("2019-12-04")))
table(datab$site)



################################################################################################################################
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

