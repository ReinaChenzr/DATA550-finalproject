# Load the dataset
heart_data <- read.csv("data/heart.csv", header = TRUE)

# Fit a logistic regression model
model <- glm(target ~ age + chol + trestbps, data = heart_data, family = binomial)

# Save the model to file
saveRDS(model, file = "output/model.rds")

