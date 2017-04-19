\name{plotwqi}
\alias{plotwqi}
\title{ WQI plot}
\description{
Function allows to choose to any type of plot to generate a graph  of water quality index against variable like stations or months through which the parameters were measured. 
The plot is saved as an Jpeg image in the current R directory.
}
\usage{
plotwqi(w, d, ...)
}

\arguments{
  \item{w}{ water quality index values calculated from water quality index formula}
  \item{d}{ it is basically the first column in the data provided by the user. It could be stations (numbered) across or months(numbered) across which the parameters were measured}
  \item{\dots}{other arguments as may be required for the function.}
}
\details{
it allows the user to choose out of various types of plot like Points, Lines, OverPlotted Points and lines , Points Joined by Lines, Stair Steps and Histogram. 
the plot can help to determine how WQI is changing temporally or spatially.
}
\value{
 the function returns a plot of WQI 
}


\author{Jigeeshu Joshi <j_josh01@uni.muenster.de>}




\keyword{ plot }
\keyword{ lines }
