png(filename = "plot2.png", width = 480, height = 480, units = "px")
DateTime <- strptime(paste(Power$Date, Power$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
plot(DateTime, GAP, type = "l", ylab = "Global Active Power (kilowatts)", xlab = "")
dev.off()
