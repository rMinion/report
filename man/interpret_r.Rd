% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/interpret_r.R
\name{interpret_r}
\alias{interpret_r}
\title{Correlation Coefficient Interpretation}
\usage{
interpret_r(r, rules = "gignac2016")
}
\arguments{
\item{r}{Value or vector of correlation coefficient.}

\item{rules}{Can be "gignac2016" (default), cohen1988", "evans1996" or custom set of rules.}
}
\description{
Correlation Coefficient Interpretation
}
\examples{
interpret_r(r = .015)
interpret_r(r = c(.5, -.02))

}
\references{
\itemize{
  \item Gignac, G. E., & Szodorai, E. T. (2016). Effect size guidelines for individual differences researchers. Personality and individual differences, 102, 74-78.
  \item Cohen, J. (1988). Statistical power analysis for the behavioural sciences.
  \item Evans, J. D. (1996). Straightforward statistics for the behavioral sciences. Thomson Brooks/Cole Publishing Co.
}
}
\seealso{
Page 88 of APA's 6th Edition.
}
