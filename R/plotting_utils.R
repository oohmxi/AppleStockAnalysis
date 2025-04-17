# plotting_utils.R

library(ggplot2)
library(plotly)

# Generic histogram plot
plot_histogram <- function(data, xvar, title, fill = "steelblue") {
  ggplot(data, aes_string(x = xvar)) +
    geom_histogram(bins = 30, fill = fill, color = "black") +
    labs(title = title, x = xvar, y = "Frequency") +
    theme_minimal()
}

# Generic scatter plot
plot_scatter <- function(data, xvar, yvar, title) {
  ggplot(data, aes_string(x = xvar, y = yvar)) +
    geom_point(alpha = 0.5, color = "darkgreen") +
    labs(title = title, x = xvar, y = yvar) +
    theme_minimal()
}

# Line plot for monthly averages
plot_monthly_avg <- function(monthly_df) {
  ggplot(monthly_df, aes(x = Month, y = Avg_Close)) +
    geom_line(color = "purple") +
    labs(title = "Monthly Average Closing Prices", x = "Month", y = "Average Close") +
    theme_minimal() +
    scale_x_date(date_breaks = "1 year", date_labels = "%Y") +
    theme(axis.text.x = element_text(angle = 45, hjust = 1))
}
