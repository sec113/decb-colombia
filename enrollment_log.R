library(plyr)
# Screening

database=read.delim("C:/Users/SergioMC/Documents/Dartmouth/Research/screeningresults11.txt")

as.data.frame(unique(database$cedula))
as.data.frame(table(database$cedula,database$sex))

database$date=as.Date(database$date,"%d/%m/%Y")

database=subset(database, date < as.Date("2018-06-06")) ##año-mes-dia

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

database$notdiagnosis=ifelse(database$depression != "" | database$oh != "","no","yes")
database$notscreen=ifelese()

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

