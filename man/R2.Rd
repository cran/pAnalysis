\name{R2}
\alias{R2}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{R-squared}
\description{Simple measure of R-squared}
\usage{
R2(x, y)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{ a vector of real numbers}
  \item{y}{ a vector of real numbers; must be the same length as \code{x}}
}

\value{R2 output is a number between 0 and 1}
\author{
Joseph G. Kreke, PhD
}
\examples{
 x=c(1,2,3,4,5,6)
 y=c(1.2, 2.1, 2.9, 3.9, 5.3, 6.0)
 r2 <- R2(x,y)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ R-squared }
