\name{pAnalysis-package}
\alias{pAnalysis-package}
\alias{pAnalysis}
\docType{package}
\title{
\packageTitle{pAnalysis}
}
\description{
%%\packageDescription{pAnalysis}

R-sqaured (R2), as a function of n datapoints of x and y, is a standard goodness-of-fit measure that has the unfortunate behavior of becoming more sensitive to noise as the number of degrees of freedom (n) decreases. The mean of R2 measuring just noise is 1/(n-1). However, the distributions of R2 values measuring just noise varies greatly for each n: they are neither uniform nor consistent in shape, especially at low n.  At the next-to-lowest value of n, where n=3, the mean R2 value is 0.5 but the distribution of possible R2 values is symmetric about that point - rising from the mean (0.5) toward the extremes of both 0 and 1 - and every other possible value of R2 is more likely than the mean.  When n=3, R2 values of 0 or 1 (the extremes) are more than 30 times more likely than the value of 0.5 (P(R2>0.999 or R2<0.001)=0.020; P(R2>0.499 and R2<0.501)=0.00069).  For n=4 and higher, the distributions of R2 are not symmetric about the mean and high values of R2 are not as likely as they are at n=3 but there are still significant probabilities of achieving high R2 values. As n increases, the probability of obtaining high R2 values with just noise decreases sharply.  We invite the reader to run the plotpdf() function for 3, 4 and 5 degrees of freedom.  See plotpdf() examples for syntax.

Instead of judging the validity of a particular value of R2 by comparing it to the mean of the noise distributions (1/(n-1)), we consider how the percentiles of R2 - measuring noise only - vary with respect to n.  For a given n, we conduct many measurements of R2 using numbers randomnly assigned according to a particular noise distribution function.  Then, for a given percentile (p) of noise, we find the value of R2 that is above p percent of all R2 values which then becomes the baseline, R2p.  Hence, if one knows the n, how the noise is distributed (dist) and what noise level to stay above (p), one can find the baseline noise (R2p) using the R2p function.  We use the normal distribution (dist='normal') and the 95th percentile (p=0.95) as defaults. See plotcdf().

We also provide a function (R2pTable) that will output a table of R2p values based on several degrees of freedom and several percentiles you may want to have handy.  Use a pctlist equal to the percentiles you would like to see, e.g. pctlist=c(0.9, 0.95, 0.99).

In addition, we also provide a function, R2k, one can use to rescale one or more measurements of R2 to a particular pct and n.  One can argue that any value of R2 that equals R2p for a particular noise percentile (p) and number of degrees of freedom (n), must be equivalent to any other value of R2 if it equals R2p for a different n.  (We do not presume the same can be said of different values of p.) In other words, all values of R2 along an R2p curve (see plotR2p()) sit at the border between acceptable and unacceptable noise.  For a particular p, a measured value of R2 falling on the R2p curve has just as much chance (1-p) of being brought about by noise as any other value of R2 that falls on the same R2p curve (different n, same p).  Therefore, any R2 value falling on the R2p curve is equivalent in terms of measuring goodness of fit.  Values of R2 that sit above the R2p curve, then establish a ratio we define as R2k = (R2-R2p)/(1-R2p).  This ratio, R2k, then establishes a line of equivalency:  all values on this line reside at the same fractional distance away from the baseline and therefore have a measure that is equivalent to the original R2 measure.  See plotR2k() and plotR2Equiv().

R2k has several important features. 1. Its range of possible values is negative infinity to +1. A negative value is a quick indicator that the associated R2 measure is indistinguishable from noise and a positive value means it is above the noise whose magnitude indicates how far it is above the noise.  2. It is independent of n, which means it can be directly compared to R2ks obtained from other R2 measurements using different n. 3. It is independent of the noise distribution.  Once the R2p value is obtained for a given set of parameters (n, p, dist), the associated, rescaled R2k values can be directly compared.  However, R2k values coming from different noise baselines (R2ps) can not be directly compared.
}


%%\details{
%%
%%The DESCRIPTION file:
%%\packageDESCRIPTION{pAnalysis}
%%\packageIndices{pAnalysis}
%%~~ An overview of how to use the package, including the most important functions ~~
%%}
\author{
\packageAuthor{pAnalysis}

Maintainer: \packageMaintainer{pAnalysis}
}
\references{
Khemlani, Sangeet; Kreke, Joseph; Trafton, Greg. "Using Percentile Analysis to Baseline Noise in R-squared".  Harris, Inc; Naval Research Laboratory. (in draft)
}
%%~~ Optionally other standard keywords, one per line, from file KEYWORDS in the R documentation ~~
%%~~ directory ~~
\keyword{ R-squared }
\keyword{ Noise }
\keyword{ package }

