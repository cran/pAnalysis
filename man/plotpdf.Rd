\name{plotpdf}
\alias{plotpdf}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Plot Several Probability Density Functions
%%  ~~function to do ... ~~
}
\description{
Plots the probability density function for a given number of degrees of freedom (dof) and a noise distribution function}
\usage{
plotpdf(dof, order = 4, dist = "normal", ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{dof}{the number of degrees of freedom}
  \item{order}{the order of magnitude of the number of samples desired for the plot}
  \item{dist}{the noise distribution function. "normal" by default)}
  \item{\dots}{other arguments used in calls to pcdfs()}
}

\value{The output of plotpdf is a ggplot object}
\author{
Joseph G. Kreke, PhD
}
\examples{
	plt <- plotpdf(3)
	plt <- plotpdf(5,order=6)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ pdf }
\keyword{ plot }

