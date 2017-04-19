\name{WQIndex}
\alias{WQIndex-package}
\alias{WQIndex}
\docType{package}
\title{
Water Quality Index Computation
}
\description{
The package calculates the Water quality index from the measured water quality components. WQI is defined as a rating reflecting the composite influence of different water quality parameters. 
WQI is calculated from the point of view of the suitability of surface water for human consumption and usability. 
	
Output: The package gives the mathematically calculated Water Quality Indices from the measured water quality components for a certain period or certain locations.
The package also gives a plot of Indices calculated. It helps to analyse the temporal and spatial changes in Water Quality. The Water Quality Index Categorize by
CCME schema is embedded in the plot which helps to determine the usability of water (eg: Drinking, irrigation, Industries, Bathing etc.)
}

\details{

In the package I have considered most commonly measured eight water quality parameters. They are listed below: 


	1) Temperature : Temperature is a measure of how much heat is present in the water. Water temperature affects the ability of water to hold oxygen, the rate of photosynthesis by aquatic plants and the metabolic rates of aquatic organisms.
	Unit: Degree Celsius 

	2) pH : pH is a measurement of the acidity or basic quality of water.
	Unit: Unitless

	3) Dissolved Oxygen (DO) : The dissolved oxygen concentration present in water reflects atmospheric dissolution, as well as autotrophic and heterotrophic processes that respectively produce and consume oxygen.
	Unit: mg/litre

	4) Biological Oxygen Demand (BOD) : Biological Oxygen Demand (BOD) measures the amount of oxygen consumed by microorganisms in the process of decomposing organic matter in river water.
	Unit: mg/litre

	5) Chemical Oxygen Demand (COD) : Chemical Oxygen Demand is the measure of the capacity of water to consume oxygen during the decomposition of organic matter and the oxidation of inorganic chemicals such as ammonia and nitrate.
	Unit: mg/litre

	6) Fecal Coliform (FC) : The fecal coliform bacteria multiply rapidly when conditions are good for growth and die in large quantities when they are not. Untreated sewage, poorly maintained septic systems can cause high levels of fecal coliform bacteria to appear in a water body.
	Unit: Number per 100 ml

	7) Total Coliform (TC) : Total Coliform bacteria are a collection of relatively harmless microorganisms.
	Unit: Number per 100 ml

	8) Total Kjeldahl Nitrogen (TKN) : Total Kjeldahl Nitrogen is the sum of organic nitrogen, ammonia and ammonium. Waste water contain organically bound nitrogen and ammonia. The organically bound nitrogen must be released from the organic matter by a process of digestion prior to analysis. This form of nitrogen is usually much higher on influent (untreated waste) then effluent.
	Unit: mg/litre
	

\tabular{ll}{
Package: \tab WQIndex\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2014-08-08\cr
License: \tab GPL-2\cr
}
To use the package create a *.xls file containing the measurement values of the eight water components for months or locations. 
Convert the *.xls file in *.txt file. When you run the package it will ask for *.txt file. It will also ask where you want to save the calculated Index value. 
Make sure that your excel file contains exactly 9 columns with the following names (var, temperature, ph, do, bod, cod, fc, tc, tkn). This is for the purpose of standardization. 

}
\author{
Jigeeshu Joshi

Maintainer: Jigeeshu Joshi <j_josh01@uni.muenster.de>

}


\keyword{ WaterQualityIndices }
\keyword{ ParameterNormalization }
\keyword{ CurveFitMethod }

\source{

 
 


 \url{ http://www.esu7.org/~waterqweb/qvaluegraph.html 
 }

}

\examples{

#WQI() -  call the function WQI() which is the main function in package. it will prompt to select the data file (.txt) for calculation of WQI.


}