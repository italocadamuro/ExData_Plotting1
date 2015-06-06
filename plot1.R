plot1 <- function (fileName, tt3 ) {
 
  fileName<-paste(fileName , ".png", sep="")
  
  
  png(filename = fileName,
           width = 480, height = 480, units = "px", pointsize = 12,
           bg = "white", res = NA, family = "", restoreConsole = TRUE,
           type = c("windows", "cairo", "cairo-png"))
 
  hist(as.numeric(as.character(tt3$Global_active_power)), col="red", main = "Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency")
  dev.off()  
}