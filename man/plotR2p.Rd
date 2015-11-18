\name{plotR2p}
\alias{plotR2p}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Plot several noise baselines (R2p)}
\description{Plots R2 values at several baseline noise levels (pct).  Measured R2 values above the baseline can be distinguished from noise while those R2 values below the baseline can not.}
\usage{
plotR2p(doflist = c(2:30), pctlist = c(0.95), order = 4, ndecimals = 3, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{doflist}{a vector of degrees of freedom, integer numbers >=2}
  \item{pctlist}{a vector of percentiles of acceptable noise expressed as numbers between 0 and 1}
  \item{order}{a single real number > 3 and < 7.  Defaults are 5 and 6)}
  \item{ndecimals}{the number of decimal places desired for the result.  an integer number > 0. } 
  \item{\dots}{other arguments used by pcdfs()}
}

\value{The output of this function is a ggplot object}
\author{
Joseph G. Kreke, PhD
}
\examples{
	plt <- plotR2p(doflist=c(2:30), pctlist=0.95, order=4)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ noise }
\keyword{ baseline }
\keyword{ plot }
