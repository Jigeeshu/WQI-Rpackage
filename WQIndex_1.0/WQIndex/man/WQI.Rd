\name{WQI}
\alias{WQI}

\title{
Water Quality Index 
}
\description{
This is the primary function in the package WQIndex which gives the water quality index(WQI) for measured water components. 
It lets the user import data by choosing *.txt file from the system, calls other functions in the package to perform the WQI computation tasks.
It also plot the graph for calculated Index and output the Indices calculated into *.txt file which can be saved on the users system.
}
\usage{
WQI()
}

\details{
Following are list of functions that are called by WQI() which are contained in the package WQIndex:

read.table() : to read the *.txt file on the system containing the measured water component values.

checkdata() : to check if the data is appropriate for subsequent calculation. it should not have missing and non numeric values

besfit() : to generate trendline equation using best curve fit method

normalize() : to normalize the parameter values for use in WQI equation. 

wqifun() : to implement WQI equation using normalize values

plot() : to plot the graph of calculated WQI values

write.table() : to write the WQI values into a *.txt file

}

\value{
    \item{data}{Input from the user. It is a dataframe containing strictly 9 columns(where the first columns is a variable along which water quality components are measured eg: Location, Months etc. and the eight water quality components. It has as many rows as the no.of measured values.}
	\item{fittedvalues}{list containing parameter values after applying curve fit method}
	\item{qvalues}{list containing normalized parameter values }
	\item{WQI}{Vector of calculated Water Quality indices.}
    \item{qdf}{matrix of normalized values}
    \item{path}{path of the file where the index values should be stored }

}

\author{Jigeeshu Joshi <j_josh01@uni.muenster.de>}
\keyword{ Indices }
\keyword{ Normalize }
\keyword{ bestcurvefit }

\examples{

	 #WQI() - call the function WQI() which is the main function in package. it will prompt to select the data file (.txt) for calculation of WQI.

}

