plot2 <- function (fileName, tt3 ) {
  
  fileName<-paste(fileName , ".png", sep="")
  
  
  
  png(filename = fileName,
      width = 480, height = 480, units = "px", pointsize = 12,
      bg = "white", res = NA, family = "", restoreConsole = TRUE,
      type = c("windows", "cairo", "cairo-png"))
  
  
  plot(newtt3$newCol, as.numeric(as.character(newtt3$Global_active_power)), type="l", ylab="Global Active Power (kilowatts)", xlab="")

  
  dev.off()  
  
  
  
}