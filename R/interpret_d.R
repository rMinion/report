#' Standardized Difference (Cohen's d) Interpretation
#'
#' Interpretation of indices using different sets of rules of thumb.
#' \href{https://easystats.github.io/report/articles/interpret_metrics.html#standardized-difference-d-cohens-d}{Click here} for details.
#'
#'
#' @param d Value or vector of d values.
#' @param rules Can be "gignac2016" (default), "cohen1988", "sawilowsky2009" or custom set of rules.
#'
#'
#'
#' @examples
#' interpret_d(.02)
#' interpret_d(c(.5, .02))
#' @references
#' \itemize{
#'   \item Gignac, G. E., & Szodorai, E. T. (2016). Effect size guidelines for individual differences researchers. Personality and individual differences, 102, 74-78.
#'   \item Cohen, J. (1988). Statistical power analysis for the behavioural sciences.
#'   \item Sawilowsky, S. S. (2009). New effect size rules of thumb.
#' }
#' @export
interpret_d <- function(d, rules = "gignac2016") {
  if (is.rules(rules)) {
    return(interpret(abs(d), rules))
  } else {
    if (rules == "gignac2016") {
      return(interpret(abs(d), rules(c(0.2, 0.4, 0.6), c("very small", "small", "medium", "large"))))
    } else if (rules == "cohen1988") {
      return(interpret(abs(d), rules(c(0.2, 0.5, 0.8), c("very small", "small", "medium", "large"))))
    } else if (rules == "sawilowsky2009") {
      return(interpret(abs(d), rules(c(0.1, 0.2, 0.5, 0.8, 1.2, 2), c("tiny", "very small", "small", "medium", "large", "very large", "huge"))))
    } else {
      stop("rules must be 'cohen1988', 'sawilowsky2009' or an object of type rules.")
    }
  }
}
