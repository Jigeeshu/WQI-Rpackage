# the function calculates the water quality index considering the water quality component measured like Temperature, PH, DO (dissolved Oxygen)
# BOD (Biological Oxygen Demand), COD (Chemical Oxygen Demand, FC (Fecal Coliform), TC (Total Coliform), TKN (Total Kjeldhal Nitrogen. 
# The input file should be in Tab Delimiter format (*.txt). It should contain 9 columns each for each of the eight measured parameter values 
# and one for the serial number. The measurement could be over several months in which case the one column indicates the months 
#or it could be different locations. 

    WQI = function()
    {
    print("Please, choose a *.txt data file from your system containing the parameter values\n")
    data = read.table(file.choose(), header=T, sep="\t")
       
  
    message =checkdata(data)
    print(message)
    fittedvalues = bestfit(data)
    
    qvalues = normalize(fittedvalues)
    qdf = data.frame(qvalues)
    
  
    WQI = wqifun(qdf)
    
    print("Give the complete path to store *.txt file containing the Index values")
    
    print("For example, 'E:/index.txt' ")
    
    path =scan(file="", what = "character", nmax =1)
  
    
    write.table(WQI, path, sep="\t")
    plotwqi(WQI,data)
    print("If you want to save the image, press 'y' else press 'n', The image will be stored in R working directory")
    m =scan(file="", what = "character", nmax =1)
    
    if (m == "y")
    {
	jpeg("wqiplot.jpg")
    	plotwqi(WQI,data)
    	dev.off()
    }

	print("WATER QUALITY INDICES")
    return(WQI)
  
    }
    
   
   
   