library(data.table)

#setwd("E:/Coursera - Exploratory Analysis/exdata-data-household_power_consumption")

DT<-fread("household_power_consumption.txt")
DT2<-subset(DT, as.Date(Date,"%d/%m/%Y") >= '2007-02-01' & as.Date(Date,"%d/%m/%Y") <= '2007-02-02')

Sys.setlocale("LC_TIME","English")

par(cex.lab=0.8,cex.axis=0.8)
with(DT2,plot(strptime(paste(Date,Time),"%d/%m/%Y %H:%M:%S"),Global_active_power,type="l",xlab="",ylab="Global Active Power (kilowatts)"))

dev.copy(png,file="plot2.png",width = 480,height = 480)
dev.off()