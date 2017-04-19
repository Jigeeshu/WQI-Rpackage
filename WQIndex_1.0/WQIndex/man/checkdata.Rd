\name{checkdata}
\alias{checkdata}

\title{ Check data}
\description{
The function checks the water quality data provided by the user. The data is input in form of *.txt file. The data should not have any NA values. Since the data is used for mathematical computations it is should be of type numeric
}
\usage{
checkdata(d, ...)
}

\arguments{
  \item{d}{ data provided by the user. It should be the measured values of the water component}
  \item{\dots}{other arguments as may be required for the function.}
  
}
\details{
the function checks the data provided so it can be used for subsequent processing. It checks for NA values. If any value is missing it gives message to recheck the data. 
Missing values may be replaced by zero as a workaround however, it will not give accurate Index value. better solution is to neglect all the parameter measurements for that station or month if any one of them is unavailable.
It also checks for any non numeric values. If any non numeric value is found it gives a message to rectify the data. 
}
\value{

 \item{msg}{ it is the message indicated whether the data provided is okay or it is not usable for subsequent calculation}

}

\author{
Jigeeshu Joshi <j_josh01@uni.muenster.de>
}
 
\keyword{ numeric }
\keyword{ NA }
\keyword{ checkdata }

