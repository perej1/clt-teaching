library(ggplot2)
library(tibble)

g <- ggplot() +
  xlim(-10, 10) +
  geom_function(fun = dnorm, args = list(mean = 0, sd = 1)) +
  geom_function(fun = dnorm, args = list(mean = 1, sd = 3)) +
  theme(panel.background = element_blank(),
        axis.text = element_text(size = 15),
        axis.title = element_text(size = 15),
        panel.grid.major = element_line(colour = alpha("black", 0.2))) +
  xlab("x") +
  ylab("f(x)")
ggsave("normal.pdf", g, "pdf", "../presentation/", dpi = 1000)
