library(data.table)

#setwd("E:/Coursera - Exploratory Analysis/exdata-data-household_power_consumption")

DT<-fread("household_power_consumption.txt")
DT2<-subset(DT, as.Date(Date,"%d/%m/%Y") >= '2007-02-01' & as.Date(Date,"%d/%m/%Y") <= '2007-02-02')

Sys.setlocale("LC_TIME","English")

png("plot3.png",width = 480,height = 480)

par(cex.lab=0.8,cex.axis=0.8)
with(DT2,plot(strptime(paste(Date,Time),"%d/%m/%Y %H:%M:%S"),Sub_metering_1,type="l",xlab="",ylab="Energy submetering"))
with(DT2,lines(strptime(paste(Date,Time),"%d/%m/%Y %H:%M:%S"),Sub_metering_2,type="l",col="red"))
with(DT2,lines(strptime(paste(Date,Time),"%d/%m/%Y %H:%M:%S"),Sub_metering_3,type="l",col="blue"))
with(DT2,legend("topright",lwd=1,inset=0,cex=0.8,col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3")))

dev.off()
