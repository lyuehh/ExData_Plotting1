file <- "household_power_consumption.txt"

df <- read.table(file, header=T, sep=";", na.strings="?")

df$Date <- as.Date(df$Date, format="%d/%m/%Y")
df <- df[df$Date >= as.Date('2007-02-01') & df$Date <= as.Date('2007-02-02'),]

png(filename="plot2.png", width=480, height=480, units='px')
plot(df$Global_active_power, type="l", xaxt="n", xlab="", ylab="Global Active Power (kilowatts)")
axis(1, at=c(1, as.integer(nrow(df)/2), nrow(df)), labels=c("Thu", "Fri", "Sat"))
dev.off()

