\name{R2k}
\alias{R2k}
\title{Conversion of standard R2 to a noise/dof-independent value
}
\description{This function converts a vector of R2 values to a vector of noise-baselined, dof-independent and noise distribution-independent values.  The resulting R2k values may vary from -inf to +1 where any negative value indicates it is indistinguishable from noise and should be discarded.  Positive values indicate the R2k value is distinguishable from noise and allow direct comparison to other R2k values that may have been arrived at from models of different degrees of freedom.
}
\usage{
	R2k(R2, dof, pct=0.95, ndecimals=3,...)
}
\arguments{
  \item{R2}{a vector of real numbers between 0 and 1}
  \item{dof}{the number of degrees of freedom;  an integer.}
  \item{pct}{percentile of allowable noise expressed as a number between 0 and 1.  Default is 0.95.}
  \item{ndecimals}{the number of decimal places in the result}
  \item{\dots}{other arguments used in calls to pcdfs()}
}

\value{R2k is a value between 0 and 1}
\author{
Joseph G. Kreke, PhD
}
\examples{
	r2a <- 0.839
	dof <- 10
	r2ka <- R2k(r2a, dof)
	r2b <- runif(n=20,min=0.71,max=0.73)
	r2kb <- R2k(r2b, dof)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ Equivalent R2 }
