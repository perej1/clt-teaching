#' Compute 1 - cdf for the binomial distribution
#'
#' @param x Number of successes
#' @param n Number of trials
#' @param p Probability of success
#'
#' @returns Probability corresponding to 1 - F(x)
pbinom_tail <- function(x, n, p) {
  prob <- 0
  for (xi in x:n) {
    prob <- prob + choose(n, xi) * p^x * (1-p)^(n-x)
  }
  prob
}

n <- 284807
x <- 492
p <- 0.0016

# Our naive implementation for precise probabilities does not work
pbinom_tail(x, n, p)

# R function is better optimized than our function
pbinom(x, n, p, lower.tail = FALSE) + dbinom(x, n, p)

# Normal approximation
q <- (x - n * p) / (sqrt(n * p * (1 - p)))
pnorm(q, lower.tail = FALSE)
