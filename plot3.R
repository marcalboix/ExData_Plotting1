# plot3.R
# Environment, load data and remove old plot.
source("LoadData.R")
strDestPlot <- "plot3.png"
if (file.exists(strDestPlot)){
    file.remove(strDestPlot)
}
png(strDestPlot, width = 480, height = 480)
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
       lwd=2)
dev.off()
