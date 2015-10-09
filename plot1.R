# plot1.R
# Environment, load data and remove old plot.
setwd("~/Documents/Github/Exploration Data Analysis")
source("LoadData.R")
strDestPlot <- "plot1.png"
if (file.exists(strDestPlot)){
    file.remove(strDestPlot)
}
png(strDestPlot, width = 480, height = 480)
hist(df$Global_active_power, 
     main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)", 
     ylab = "Frequency", 
     col = "red")
dev.off()
