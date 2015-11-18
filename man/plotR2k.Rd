\name{plotR2k}
\alias{plotR2k}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Plot R2k for a single measured R2 and a single noise percentile across a range of degrees of freedom
}
\description{This function plots R2k values presuming that the same R2 value was obtained using varying numbers of degrees of freedom.  Provide the R2 value of interest and the desired noise baseline level (pct).
}
\usage{
plotR2k(R2, doflist = c(2:30), pct = 0.95, order = 4, ndecimals = 3, ...)
}
\arguments{
  \item{R2}{a number between 0 and 1}
  \item{doflist}{dof list - a vector of integers > 1}
  \item{pct}{percentile of allowable noise expressed as a number between 0 and 1.  Default is 0.95.}
  \item{ndecimals}{the number of desired decimal places in the result}
  \item{order}{order of magnitude of the number of samples}
  \item{\dots}{other arguments used by pcdfs()}
}

\value{The output of this function is a ggplot object.}
\author{
Joseph G. Kreke, PhD
}
\examples{
	plt = plotR2k(R2=0.77, pct=0.90)
	plt = plotR2k(0.5)
}
\keyword{ R-squared }
\keyword{ Equivalent }
\keyword{ plot }