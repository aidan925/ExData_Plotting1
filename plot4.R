png(filename = "plot4.png", width = 480, height = 480, units = "px")

par(mfcol=c(2,2))

Power <- Power[Power$Date %in% c("1/2/2007","2/2/2007"),]
GAP <- as.numeric(Power$Global_active_power)
hist(GAP, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")

DateTime <- strptime(paste(Power$Date, Power$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
plot(DateTime, GAP, type = "l", ylab = "Global Active Power (kilowatts)", xlab = "")

Voltage <- as.numeric(Power$Voltage)
plot(DateTime, Voltage, type = "l", xlab = "")

GRP <- as.numeric(Power$Global_reactive_power)
plot(DateTime, GRP, type = "l", ylab = "Global Reactive Power", xlab = "")

dev.off()
