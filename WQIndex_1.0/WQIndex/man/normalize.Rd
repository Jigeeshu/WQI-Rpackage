\name{normalize}
\alias{normalize}

\title{Normalization}

\description{The quality parameters have different units. To obtain a Water Quality Index they should be non dimensional. This function is called to normalize (non dimensionalize the various parameter values.}

\usage{normalize(x, ...)}

\arguments{
  \item{x}{x is the argument to the function which is the fitted data returned by the fucntion 'bestfit'.}
  
  \item{\dots}{other arguments as may be required for the function.}
}

\details{none}


\value{

returns a list of normalized parameter values. Their values range from 0 to 100. 
 
  \item{temperature}{ normalized temperature value }
  \item{ph}{normalized ph value }
  \item{do}{normalized do value }
  \item{bod}{normalized bod value }
  \item{cod}{normalized cod value }
  \item{fc}{normalized fecal coliform value}
  \item{tc}{normalized total coliform value }
  \item{tkn}{normalized total kjeldhal nitrogen value }  
  
}

\author{Jigeeshu Joshi <j_josh01@uni.muenster.de>}

\keyword{normalization}

