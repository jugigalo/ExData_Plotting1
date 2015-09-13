
# To reproduce this code is necesary to put the file 
#household_power_consumption.txt in D:/ in your local Hard Disk
# This File can be downloaded from 
# https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip

setwd("D:/")
#setwd("E:/Data Science Specialization/4_Exploratory_Data_Analysis/Week_1/Project_1/exdata-data-household_power_consumption")
infile <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", dec = ".", na.strings = "?")
tmp1 <- infile
tmp1$Date <- as.Date(infile$Date, "%d/%m/%Y")
tmp2 <- tmp1[tmp1$Date == "2007-02-01",]
tmp3 <- tmp1[tmp1$Date == "2007-02-02",]
fin <- rbind(tmp2, tmp3)

png(file = "plot1.png")
hist(as.numeric(fin$Global_active_power),11, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", col = "red")
dev.off()