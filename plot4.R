# plot4.R
# Environment, load data and remove old plot.
source("LoadData.R")
strDestPlot <- "plot4.png"
if (file.exists(strDestPlot)){
    file.remove(strDestPlot)
}
png(strDestPlot, width = 480, height = 480)
par(mfrow=c(2,2))	
#plot 1
plot(df$Time, df$Global_active_power, 
     xlab = "", 
     ylab = "Global Active Power", 
     type = "l")
#plot 2
plot(df$Time, df$Voltage, 
     xlab = "datetime", 
     ylab = "Voltage", 
     type = "l")
#plot 3
plot(df$Time, df$Sub_metering_1, 
     col = "black", 
     xlab = "", 
     ylab = "Energy sub metering", 
     type = "l")
lines(df$Time, df$Sub_metering_2, 
      col="red", 
      type="l")
lines(df$Time, df$Sub_metering_3, 
      col="blue", 
      type="l")
legend("topright", 
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       col=c("black", "red", "blue"), 
       bty = "n", 
       lwd=2)
#plot 4
plot(df$Time, df$Global_reactive_power, 
     xlab = "datetime", 
     ylab = "Global_reactive_power", 
     type = "l")
dev.off()
