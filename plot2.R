# plot2.R
# Environment, load data and remove old plot.
source("LoadData.R")
strDestPlot <- "plot2.png"
if (file.exists(strDestPlot)){
    file.remove(strDestPlot)
}
png(strDestPlot, width = 480, height = 480)
plot(df$Time, df$Global_active_power, 
     xlab = "", 
     ylab = "Global Active Power (kilowatts)", 
     type = "l")
dev.off()
