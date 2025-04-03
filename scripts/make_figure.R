library(ggplot2)

# Load data
heart_data <- read.csv("data/heart.csv")

# Plot: Age vs. Cholesterol
ggplot(heart_data, aes(x = age, y = chol)) +
  geom_point(alpha = 0.6) +
  geom_smooth(method = "lm", se = FALSE, color = "blue") +
  theme_minimal()

# Save plot
ggsave("output/figure.png", width = 6, height = 4)
