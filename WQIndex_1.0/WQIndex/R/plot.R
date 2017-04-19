#plot water quality index values 

plotwqi = function(w,d, ...)
{
 
  print("CHOOSE THE TYPE OF PLOT")
  
  print("For Points enter 'p'")
  print("For Lines enter 'l'")
  print("For OverPlotted Points and lines enter 'o'")
  print("For Points Joined by Lines enter 'b'")
  print("For Stair Steps enter 's'")
  print("For Histogram enter 'h'")
  
  
  par(mfrow = c(2, 1))
  table = data.frame(c("0-44", "45-64", "65-79", "80-94", "95-100"), c("Poor","Marginal", "Fair", "Good", "Excellent"))
  opt =scan(file="", what = "character", nmax =1)
  plot(d$var, w, type = "n", xlab = "x (months/locations)" , ylab = "Index Values", main = "Water Quality Index (WQI)")
  lines(d$var, w, type=opt)
  names(table)= c("WQI",  "Categorize")
  rownames(table) = c(1,2,3,4,5)
  textplot(table,show.rownames = FALSE, cex = 0.8)
  
 
  
}
  



