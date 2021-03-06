% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/report.htest.R
\name{report.htest}
\alias{report.htest}
\title{h-test (Correlation, t-test...) Report}
\usage{
\method{report}{htest}(model, effsize = "cohen1988", ...)
}
\arguments{
\item{model}{Object of class htest.}

\item{effsize}{Effect size interpretation set of rules.}

\item{...}{Arguments passed to or from other methods.}
}
\description{
Create a report of an h-test object.
}
\examples{
report(cor.test(iris$Sepal.Width, iris$Sepal.Length, method = "spearman"))
report(t.test(iris$Sepal.Width, iris$Sepal.Length))
report(t.test(iris$Sepal.Width, iris$Sepal.Length, var.equal = TRUE))
report(t.test(mtcars$mpg ~ mtcars$vs))
report(t.test(iris$Sepal.Width, mu = 1))
}
\seealso{
report
}
