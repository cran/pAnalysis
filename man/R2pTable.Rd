\name{R2pTable}
\alias{R2pTable}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Creates a table R2p values for combinations of degrees of freedom and percentiles
}
\description{R2pTable builds a table (a data frame) of baseline noise levels (R2p values) for each combination of 
	degree of freedom and percentile.  A matrix is created with the number of rows equal to 
	the length of doflist and the number of columns equal to the length of pctlist.
	The elements of this matrix are the results of calls to the R2p function with arguments of each of combination of 
	the elements of doflist and pctlist.  Additional arguments desired for R2p can be passed along through these calls.
	The resulting matrix is converted to a data frame.  Although it takes a few seconds longer, we recommend 
	using order=5 for sufficient accuracy. (order=4 is the default to meet the CRAN recommendation that default functions
	should take no more than a few seconds.)
}
\usage{
R2pTable(doflist = NULL, pctlist = NULL, order = 4, ndecimals = 2,...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{doflist}{a vector of integers greater than 1}
  \item{pctlist}{a vector of percentiles of acceptable noise expressed as numbers between 0 and 1}
  \item{order}{order of magnitude of samples}
  \item{ndecimals}{the number of decimal places in the result}
  \item{\dots}{refers to any argument used by calls with the R2pTable routine, specifically, R2p() and pcdfs()}
}
\details{
	R2pTable can be used to generate a handy table of R2p values.  R2pTable is also useful for generating a table used for plotting R2p for several values of pct.  However, when generating many values, the processing time increases and it might take awhile to build the table.  It takes about 1min to generate R2ps for 60 degrees of freedom with order=5 and one value of pct.
}
\value{
	R2pTable returns a data frame of R2p values -- each column corresponds to a different percentile and each row's name
	corresponds to a different degree of freedom.}
\author{
Joseph G. Kreke, PhD
}
\note{
Running R2pTable with defaults takes about 20s on a MacBook Pro laptop.
}
\examples{
	tab <- R2pTable(doflist=c(3,4,5),pctlist=c(0.7,0.8,0.9))
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ percentile }
\keyword{ dof }
\keyword{ degrees of freedom }
\keyword{ percentile }
