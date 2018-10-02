# Title   : DSMB log generator
# Author  : Sergio Castro
# Created : 10/02/2018
# Comment : input:  (1) TSV document from the interactive kiosk
#           output: (1) Data table with DSMB Log

# List of packages for session
options( java.parameters = "-Xmx6g" )
.packages = c('plyr','dplyr','data.table')
# Install CRAN packages (if not already installed)
.inst = .packages %in% installed.packages()
if(length(.packages[!.inst]) > 0) install.packages(.packages[!.inst])
# Load packages into session 
invisible(lapply(.packages, library, character.only=TRUE))

# Load and prepare database
database=read.delim("D:/Informacion/Documents/Dartmouth/Data/Resultados_Diada_19-09-2018.xls")
database=within(database, rm(X))
database=as.data.frame(database) #Confirm if this step is necessary

# Set columns names
setnames(database, c("id", "cedula",    "date",    "screen_dep",    "phq9",    "audit",    "age",    "sex",    "oh",    "depression"))

# Set and prepare date (temporal data)
database$date=as.Date.factor(database$date,"%Y-%m-%d")
database=subset(database, date < as.Date("2018-09-01")) ##año-mes-dia

# Create manipulable database
dsmb_db=database

# Keep only one kiosk entry per cedula, keep only the last kiosk entry
dsmb_db=dsmb_db %>%
  group_by(cedula) %>%
  slice(which.max(as.Date(dsmb_db$date, "%Y-%%M-%d")))
  
# Add column for identified potential participants
dsmb_db$ineligible=ifelse((dsmb_db$phq9 < 5) & ((dsmb_db$audit < 8 & dsmb_db$sex=="M")|(dsmb_db$audit < 6 & dsmb_db$sex=="F")), "yes", "no")

# Add column to identified diagnosed individuals
dsmb_db$diagnosis=ifelse(dsmb_db$depression != "" | dsmb_db$oh != "","yes","no")

# Add column for individuals that screened negative
dsmb_db$neg_screening=ifelse(dsmb_db$ineligible=="no" & dsmb_db$diagnosis=="no", "yes","no")



table(dsmb_db$notdiagnosis)

table(dsmb_db$notconfirmed)

table(dsmb_db$ineligible)

dsmb_report=data.frame(total=nrow(count(database,"cedula")),
                       ineligible=as.numeric(table(dsmb_db$ineligible)[2]),
                       negative_screening=as.numeric(table(dsmb_db$neg_screening)[1]),
                       not_diagnosis=as.numeric(table(dsmb_db$diagnosis)[2]),
                       stringsAsFactors=FALSE)
                       
write.csv(x = dsmb_report,file = "D:/Informacion/Documents/Dartmouth/Weekly Logs/dsmb_log.csv")

                       
  
)
