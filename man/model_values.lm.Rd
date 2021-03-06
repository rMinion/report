% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/report.glm.R
\name{model_values.lm}
\alias{model_values.lm}
\title{Linear Models Values}
\usage{
\method{model_values}{lm}(model, ci = 0.95, standardize = "refit",
  standardize_robust = FALSE, effsize = "cohen1988",
  performance_in_table = TRUE, performance_metrics = "all",
  bootstrap = FALSE, iterations = 500, ...)
}
\arguments{
\item{model}{Object of class \link{lm}.}

\item{ci}{Confidence Interval (CI) level. Default to 0.95 (95\%).}

\item{standardize}{Add standardized parameters. Can be FALSE or a character indicating the standardization method (see \link{standardize_parameters}).}

\item{standardize_robust}{Robust standardization. See \link{standardize_parameters}.}

\item{effsize}{\href{https://easystats.github.io/report/articles/interpret_metrics.html}{Interpret the standardized parameters} using a set of rules. Can be "cohen1988" (default for linear models), "chen2010" (default for logistic models), "sawilowsky2009", NULL, or a custom set of \link{rules}.}

\item{performance_in_table}{Add performance metrics in table.}

\item{performance_metrics}{See \code{\link[performance:model_performance.lm]{model_performance}}.}

\item{bootstrap}{Should estimates be based on bootsrapped model? If TRUE, then arguments of \link[=model_parameters.stanreg]{Bayesian regressions} apply.}

\item{iterations}{The number of bootstrap replicates. This only apply in the case of bootsrapped frequentist models.}

\item{...}{Arguments passed to or from other methods (e.g., to \link[=standardize.lm]{standardize}).}
}
\description{
Extract all values of linear models.
}
