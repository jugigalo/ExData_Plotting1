
# To reproduce this code is necesary to put the file 
#household_power_consumption.txt in D:/ in your local Hard Disk
# This File can be downloaded from 
# https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip

setwd("D:/")
#setwd("E:/Data Science Specialization/4_Exploratory_Data_Analysis/Week_1/Project_1/exdata-data-household_power_consumption")
infile <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", dec = ".", na.strings = "?")
tmp1 <- infile
tmp1$Date <- as.Date(tmp1$Date, "%d/%m/%Y")
tmp1$Date_Time <- paste(tmp1$Date, tmp1$Time)
tmp1$Date_Time2 <- strptime(tmp1$Date_Time, "%Y-%m-%d %H:%M:%S")
tmp2 <- tmp1[tmp1$Date == "2007-02-01",]
tmp3 <- tmp1[tmp1$Date == "2007-02-02",]
tmp4 <- rbind(tmp2, tmp3)
fin <- tmp4
png(file = "plot2.png")
plot(fin$Date_Time2, fin$Global_active_power, type = "l", , ylab = "Global Active Power (kilowatts)", xlab = "")

dev.off()