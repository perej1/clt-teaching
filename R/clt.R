library(tidyverse)

# Global parameters
m <- 1000
set.seed(123) # For reproducibility

#' Compute m means from samples of size n. Samples are from the exponential
#' distribution with rate r.
#'
#' @param n Sample size
#' @param m Number of repetitions
#' @param r Rate for the exponential distribution
#' @param rf Function for creating iid samples, e.g., runif
#'
#' @returns List of m means computed from samples of size n
create_means_from_dist <- function(n, m, rf) {
  map(1:m, ~ rf(n)) %>%
    map(mean)
  
}

########## UNIFORM DISTRIBUTION ##########

# Compute m means for various sample sizes
samples <- c(s1 = 1, s2 = 5, s3 = 100) %>%
  map(~ create_means_from_dist(.x, m = m, rf = runif)) %>%
  map(flatten_dbl) %>%
  as_tibble()

# Plotting
base <- ggplot(samples) +
  ylab(expression("Prosenttia per" ~ bar(x))) +
  xlab(expression(bar(x))) +
  xlim(0, 1) + 
  theme(panel.background = element_blank(),
        axis.text = element_text(size = 15),
        axis.title = element_text(size = 15),
        panel.grid.major = element_line(colour = alpha("black", 0.2)))

g1 <- base +
  geom_histogram(aes(x = s1, y = after_stat(density)), binwidth = 0.05,
                 fill = "skyblue", color = "black")

g2 <- base +
  geom_histogram(aes(x = s2, y = after_stat(density)), binwidth = 0.05,
                 fill = "skyblue", color = "black")

g3 <- base +
  geom_histogram(aes(x = s3, y = after_stat(density)), binwidth = 0.05,
                 fill = "skyblue", color = "black")

ggsave("unif-n-1.pdf", g1, "pdf", "../presentation/", dpi = 1000)
ggsave("unif-n-5.pdf", g2, "pdf", "../presentation/", dpi = 1000)
ggsave("unif-n-100.pdf", g3, "pdf", "../presentation/", dpi = 1000)

########## EXPONENTIAL DISTRIBUTION ##########

rexp1 <- function(n) stats::rexp(n, 1)

# Compute m means for various sample sizes
samples <- c(s1 = 1, s2 = 5, s3 = 100) %>%
  map(~ create_means_from_dist(.x, m = m, rf = rexp1)) %>%
  map(flatten_dbl) %>%
  as_tibble()

# Plotting
base <- ggplot(samples) +
  ylab(expression("Prosenttia per" ~ bar(x))) +
  xlab(expression(bar(x))) +
  xlim(0, 6) +
  theme(panel.background = element_blank(),
        axis.text = element_text(size = 15),
        axis.title = element_text(size = 15),
        panel.grid.major = element_line(colour = alpha("black", 0.2)))

g1 <- base +
  geom_histogram(aes(x = s1, y = after_stat(density)), binwidth = 0.05,
                 fill = "skyblue", color = "black")

g2 <- base +
  geom_histogram(aes(x = s2, y = after_stat(density)), binwidth = 0.05,
                 fill = "skyblue", color = "black")

g3 <- base +
  geom_histogram(aes(x = s3, y = after_stat(density)), binwidth = 0.05,
                 fill = "skyblue", color = "black")

ggsave("exp-n-1.pdf", g1, "pdf", "../presentation/", dpi = 1000)
ggsave("exp-n-5.pdf", g2, "pdf", "../presentation/", dpi = 1000)
ggsave("exp-n-100.pdf", g3, "pdf", "../presentation/", dpi = 1000)
