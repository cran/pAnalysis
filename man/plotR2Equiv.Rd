\name{plotR2Equiv}
\alias{plotR2Equiv}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Plotting Equivalent R2s across a range of degrees of freedom.
%%  ~~function to do ... ~~
}
\description{For given values of R2, degrees of freedom (dof) and a percentile noise level(pct), this will plot the noise baseline (R2p) and equivalent R2 based on R2K.
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
plotR2Equiv(R2, dof, pct = 0.95, order = 4, plot_pctr2 = F, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{R2}{a number between 0 and 1}
  \item{dof}{an integer number >= 3}
  \item{pct}{percentile of allowable noise expressed as a number between 0 and 1.  Default is 0.95.}
  \item{order}{order of magnitude of the number of samples}
  \item{plot_pctr2}{adds the plot of R2p equal to R2}
  \item{\dots}{other arguments used in calls to pcdfs()}
}

\value{The output of plotR2Equiv() is a ggplot object}
\author{
Joseph G. Kreke, PhD
}
\examples{
	plt <- plotR2Equiv(R2=0.83, dof=10, pct=0.99)
	plt <- plotR2Equiv(0.7,5)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ Equivalent }
\keyword{ R2k }
\keyword{ plot }
