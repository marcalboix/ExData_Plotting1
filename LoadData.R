# LoadData.R
# Environment
setwd("~/Documents/Github/Exploration Data Analysis")
strSourceFile = "data/household_power_consumption.txt"
strDestFile = "data/subsetData.rds"
# Loading data
if (!file.exists(strDestFile)) {
    df <- read.table(strSourceFile, header=TRUE, sep=";", na="?", stringsAsFactors = FALSE)
    df$Time <- strptime(paste(df$Date, df$Time), "%d/%m/%Y %H:%M:%S")
    df$Date = as.Date(df$Date, "%d/%m/%Y")
    #Subsetting dataframe
    dateRange <- as.Date(c("2007-02-01", "2007-02-02"), "%Y-%m-%d")
    df <- subset(df, Date %in% dateRange)
    saveRDS(df, strDestFile)
} else {
    df = readRDS(strDestFile)
}
rm(strSourceFile)
rm(strDestFile)
