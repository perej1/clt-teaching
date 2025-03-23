library(tidyverse)

# The dataset contains transactions made by credit cards in September 2013 by European cardholders. This dataset presents transactions that occurred in two days, where we have 492 frauds out of 284 807 transactions.

# Read data, extract the variable giving 
data <- read_csv("creditcard.csv", col_names = TRUE, col_select = Class,
                 col_types = "i") %>%
  pull(Class)

# We have 284 807 transactions in total. Only 492 transactions are classified
# as frauds.
length(data)
table(data)

# Maximum likelihood estimate of the proportion of frauds
p_hat <- mean(data)

# Confidence interval based on asymptotic normality
binom::binom.confint(sum(data), length(data), conf.level = 0.95,
                     methods = "asymptotic")

# The confidence interval can be also computed manually
alpha <- 0.05
z <- qnorm(1 - alpha / 2)
margin_of_error <- z * sqrt(p_hat * (1 - p_hat) / length(data))
conf_int <- p_hat + c(-margin_of_error, margin_of_error)
conf_int
