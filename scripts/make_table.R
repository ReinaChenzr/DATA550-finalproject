# Load the model
model <- readRDS("output/model.rds")

# Extract coefficients summary
summary_table <- summary(model)$coefficients

# Save as CSV
write.csv(summary_table, "output/table.csv", row.names = TRUE)
