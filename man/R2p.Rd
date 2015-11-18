\name{R2p}
\alias{R2p}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Calculation of baseline noise level (R2p) at a single value of degrees of freedom (dof)
}
\description{This function determines the value of R2, called R2p here, below which a certain percentile level of noise is present.  Any
	models with R2 values below this baseline R2 value are therefore indistingushable from noise.
}
\usage{
R2p(dof, pct = 0.95, ndecimals = 3,...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{dof}{degrees of freedom; an integer}
  \item{pct}{percentile of allowable noise expressed as a number between 0 and 1.  Default is 0.95.}
  \item{ndecimals}{the number of decimal places in the result}
  \item{\dots}{other arguments used by pcdfs()}
}

\value{R2p is a real number between 0 and 1}
\author{
Joseph G. Kreke, PhD
}
\examples{
	pct <- 0.95
	dof <- 10
 	r2p <- R2p(dof, pct)
}

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ noise }
\keyword{ noise baseline }
\keyword{ R2 Equivalent }
