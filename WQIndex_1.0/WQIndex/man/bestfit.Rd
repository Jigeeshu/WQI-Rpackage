\name{bestfit}
\alias{bestfit}

\title{Best Curve Fit}
\description{
The function generates a trend line equation for each of the parameters. 3rd order polynomial function is used to generate the best curve fit. 
The function is called from the main function of package ie : WQI()
}
\usage{bestfit(x, ...)}

\arguments{
  \item{x}{x is the argument to the function which is the raw data as provided by the user.}
  \item{\dots}{other arguments as may be required for the function. }
}
\details{
The function takes the raw data in form of data.frame containing measured water parameter values. 'lm' function with 3rd order polynomial is used for curve fitting equations. 8 equations corresponding to each parameter are generated. 
The raw measured parameter values are then substituted in the trend line equations respectively to obtain the normalized values.    
}
\value{
returns a list of parameter values after curve fitting. 
  \item{temperature}{temperature value after curve fitting}
  \item{ph}{ph value after curve fitting}
  \item{do}{do value after curve fitting}
  \item{bod}{bod value after curve fitting}
  \item{cod}{cod value after curve fitting}
  \item{fc}{fecal coliform value after curve fitting}
  \item{tc}{total coliform value after curve fitting}
  \item{tkn}{total kjeldhal nitrogen value after curve fitting}  

}
\references{None}

\author{Jigeeshu Joshi <j_josh01@uni.muenster.de>}

\note{it is required that the data strictly contains the mentioned 8 water component measurement values.}


\keyword{ trendline }
\keyword{ equations }
\keyword{ bestcurvefit }