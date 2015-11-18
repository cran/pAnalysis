\name{plotcdf}
\alias{plotcdf}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Plot several Cumulative Density Functions
}
\description{
Plots the cumulative probability density function for a given number of degrees of freedom (dof) and a noise distribution function
}
\usage{
plotcdf(dof, order = 4, dist = "normal", ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{dof}{the degrees of freedom of interest}
  \item{order}{the order of magnitude of the number of samples desired for the plot}
  \item{dist}{the noise distribution: 'normal', 'uniform', 'lognormal', 'poisson', 'binomial'}
  \item{\dots}{other arguments used in pcdfs().}
}

\value{The output of plotcdf() is a ggplot object}
\author{
Joseph G. Kreke, PhD
}
\examples{
	plt <- plotcdf(dof=10, dist="lognormal")
	plt <- plotcdf(4,order=5,dist='binomial',par1=10,par2=0.75)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ cdf }
\keyword{ plot }
