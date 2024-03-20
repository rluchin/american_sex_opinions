# Load necessary library
library(dplyr)

# Set seed for reproducibility
set.seed(123)

# Parameters for the data simulation
years <- 2000:2020  # Range of years
num_entries_per_year <- 100  # Number of entries per year
responses <- c("Approve", "Neutral", "Disapprove")  # Possible responses

# Simulate data
simulated_data <- expand.grid(year = years, id = 1:num_entries_per_year) %>%
  mutate(response = sample(responses, nrow(.), replace = TRUE)) %>%
  arrange(year, id)

# View the first few rows of the simulated data
head(simulated_data)