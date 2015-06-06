plot3 <- function(fileName, newtt3 ){
  
  fileName<-paste(fileName , ".png", sep="")
  
  png(filename = fileName,
      width = 480, height = 480, units = "px", pointsize = 12,
      bg = "white", res = NA, family = "", restoreConsole = TRUE,
      type = c("windows", "cairo", "cairo-png"))
  
  
  plot((newtt3$newCol),as.numeric(as.character(newtt3$Sub_metering_1)), type="l",col="black", ylab="Energy Sub Metering", xlab=" ")

  points((newtt3$newCol),as.numeric(as.character(newtt3$Sub_metering_2)), type="l",col="red")
  points((newtt3$newCol),as.numeric(as.character(newtt3$Sub_metering_3)), type="l",col="green")
  
  legend("topright", legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col=c("black","red","green"),  lty = c(1, 1, 1))
  
  dev.off()  

}