# forecasting_utils.R

library(dplyr)

# Function to calculate daily returns
calculate_returns <- function(df) {
  df %>%
    mutate(Return = (Close - lag(Close)) / lag(Close))
}

# Function to generate sample means for CLT demonstration
generate_clt_sample_means <- function(return_vector, sample_size = 30, num_samples = 1000) {
  set.seed(123)
  replicate(num_samples, {
    sample_data <- sample(return_vector, size = sample_size, replace = TRUE)
    mean(sample_data, na.rm = TRUE)
  })
}
