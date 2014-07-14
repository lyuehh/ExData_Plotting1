file <- "household_power_consumption.txt"

df <- read.table(file, header=T, sep=";", na.strings="?")

df$Date <- as.Date(df$Date, format="%d/%m/%Y")
df <- df[df$Date >= as.Date('2007-02-01') & df$Date <= as.Date('2007-02-02'),]

png(filename="plot1.png", width=480, height=480, units='px')
hist(df$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()

