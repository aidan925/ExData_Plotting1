download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", destfile = "Powerdata.zip", method = "curl")
unzip("Powerdata.zip")
Power <- read.table("household_power_consumption.txt", header=T, sep=";", stringsAsFactors = F, dec = ".")

png(filename = "plot1.png", width = 480, height = 480, units = "px")
Power <- Power[Power$Date %in% c("1/2/2007","2/2/2007"),]
GAP <- as.numeric(Power$Global_active_power)
hist(GAP, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
