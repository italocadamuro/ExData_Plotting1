plot4 <- function(fileName, newtt3 ){
 
  fileName<-paste(fileName , ".png", sep="")
  
  png(filename = fileName,
      width = 480, height = 480, units = "px", pointsize = 12,
      bg = "white", res = NA, family = "", restoreConsole = TRUE,
      type = c("windows", "cairo", "cairo-png"))
  
  par(mfcol =c(2,2))
  
  plot(newtt3$newCol, as.numeric(as.character(newtt3$Global_active_power)), type="l", ylab="Global Active Power (kilowatts)", xlab="")
  
    
  plot((newtt3$newCol),as.numeric(as.character(newtt3$Sub_metering_1)), type="l",col="black", ylab="Energy Sub Metering", xlab=" ")
  
  points((newtt3$newCol),as.numeric(as.character(newtt3$Sub_metering_2)), type="l",col="red")
  points((newtt3$newCol),as.numeric(as.character(newtt3$Sub_metering_3)), type="l",col="green")
  
  legend("topright", legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col=c("black","red","green"),  lty = c(1, 1, 1))
  
  
  plot(newtt3$newCol, as.numeric(as.character(newtt3$Voltage)), type="l", ylab="Voltage", xlab="")
  
  
  plot(newtt3$newCol, as.numeric(as.character(newtt3$Global_reactive_power)), type="l", ylab="Global_reactive_power", xlab="")
  
  dev.off()
}