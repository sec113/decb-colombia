# Title   : Weekly log data generator
# Author  : Sergio Castro
# Created : 09/2018
# Comment : input:  (1) CSV files from REDCap from each site
#           output: (1) REsults to fll the log by hand (Pending: creating the table output)

# List of packages for session
options( java.parameters = "-Xmx6g" )
.packages = c('plyr','dplyr','data.table')
# Install CRAN packages (if not already installed)
.inst = .packages %in% installed.packages()
if(length(.packages[!.inst]) > 0) install.packages(.packages[!.inst])
# Load packages into session 
invisible(lapply(.packages, library, character.only=TRUE))


# Load the three Clinical Registry databases from R.
# Load Javesalud implementation Registry Database
temp_javesalud=read.csv("D:/Informacion/Documents/Dartmouth/Registro/javesalud.csv",encoding = "UTF-8")
# Load Javesalud Pilot Registry Database
temp_piloto=read.csv("D:/Informacion/Documents/Dartmouth/Registro/piloto.csv",encoding = "UTF-8")
# Load Santa Rosa implementation Registry database 
temp_starosa=read.csv("D:/Informacion/Documents/Dartmouth/Registro/santarosa.csv",encoding = "UTF-8")

# Merge all databases to create a database with all clinical registries for the complete analysis
complete_registry=rbind(temp_starosa,temp_piloto,temp_javesalud)
setnames(complete_registry, c("redcapid","event","date","id","names","lastnames","sex","phone","address","email","laddr_u","laddr_p","phq9","audit","follow-up","follow-upmd","diagnosis","complete"
)) 
complete_registry=distinct(complete_registry,id, .keep_all = TRUE) # Remove duplicated entries
table(complete_registry$diagnosis) # Get the distribution of diagnosis among participants


# Merge all javesalud clinical registries (there are some duplicated entries in the two databases, people that make part of the Implementation but were included by mistake in the Pilot Registry dabatase, it might be wirthy to discuss with Fernando to merge the duplicated paticipants)
javesalud_registry=rbind(temp_javesalud,temp_piloto)
setnames(javesalud_registry, c("redcapid","event","date","id","names","lastnames","sex","phone","address","email","laddr_u","laddr_p","phq9","audit","follow-up","follow-upmd","diagnosis","complete"
))
javesalud_registry=distinct(javesalud_registry,id, .keep_all = TRUE)
table(javesalud_registry$diagnosis)

# Get the data from Santa Rosa
setnames(temp_starosa, c("redcapid","event","date","id","names","lastnames","sex","phone","address","email","laddr_u","laddr_p","phq9","audit","follow-up","follow-upmd","diagnosis","complete"
))
table(temp_starosa$diagnosis)
