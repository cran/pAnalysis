\name{pcdfs}
\alias{pcdfs}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{R2 values with corresponding probability density and cumulative density functions. 
}
\description{This function builds a data frame of all possible R2 values over its range of 0 to 1, with corresponding values of probability (pdf) and cumulative probability (cdf) for a given number of degrees of freedom. R2 is divided uniformly over its range into bins whose width is determined by the number of decimal places chosen (default=3). The number of samples is determined by order (10^order).  Values of the cumulative density function (cdf) are used to calculate the baseline noise level, R2p.
}
\usage{
pcdfs(dof, order = 6, ndecimals = 3, dist = "normal", par1 = 0, par2 = 1)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{dof}{an integer greater than 1}
  \item{order}{a positive number used to set the order of magnitide of the number of samples (default is 6)}
  \item{ndecimals}{a positive integer describing the number of decimal places desired in the results}
  \item{dist}{a character string identifying the noise distribution.  The current list of possible distributions is, 'normal', 'uniform', 'lognormal', 'poisson' and 'binomial'.}
  \item{par1}{one of two parameters used to define the noise distribution  
  	For 'normal', par1 = mean,
  	For 'uniform', par1 = min,
  	For 'lognormal', par1 = logmean,
  	For 'poisson', par1=lambda,
  	For 'binomial', par1=size}
  \item{par2}{the second of two parameters used to define the noise distribution 
  	For 'normal', par2 = std dev,
  	For 'uniform', par2 = max,
  	For 'lognormal', par2 = log std dev,
  	For 'poisson', par2=(not used),
  	For 'binomial', par2=probability}
}

\value{
	pcdfs returns a data frame with columns "R2", "pdf" and "cdf".  R2 is the full range of values that R2 can possibly have (from 0 to 1) divided by 10^bw where bw (bin width).  binwidth is determined by ndecimals so 10^bw = 10^(-ndecimals). pdf is the probability density function -- the probability of obtaining a specific range of values of R2 corresponding to one of the bins.  Values range from 0 to 1.  cdf is the cumulative pdf.  Values of cdf also range from 0 to 1.
}
\author{
Joseph G. Kreke, PhD
}
\examples{
	R2df <- pcdfs(dof=8, order=6, ndecimals=3, dist="uniform")
	R2df <- pcdfs(5)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ pcdfs }
\keyword{ probability }
\keyword{ pdf }
\keyword{ cdf }
\keyword{ cumulative probability }
\keyword{ noise distribution }