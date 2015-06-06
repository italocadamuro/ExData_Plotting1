plot_Global_reactive_power <- function(fileName, df ){
  
  ## df is newtt3
  
  png(filename = fineName,
      +     width = 480, height = 480, units = "px", pointsize = 12,
      +     bg = "white", res = NA, family = "", restoreConsole = TRUE,
      +     type = c("windows", "cairo", "cairo-png"))
  plot(df$newCol, as.numeric(as.character(df$Global_reactive_power)), type="l", xlab="", ylab="Global_reactive_power")
  dev.off()  
}