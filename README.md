<p align="center">
  <img src="https://upload.wikimedia.org/wikipedia/commons/f/fa/Apple_logo_black.svg" alt="Apple Logo" width="100"/>
</p>

# AppleStockAnalysis

![version](https://img.shields.io/badge/version-v1.0.0-blue)
![status](https://img.shields.io/badge/status-production--ready-brightgreen)

### Time Series Forecasting in R

## Project Overview

This project analyzes and forecasts trends in Apple's historical stock price data using R. It applies ARIMA models, seasonal decomposition, and time series visualizations to uncover market patterns and project future performance.

## Dataset Source

This project uses Apple Inc. stock data retrieved from a public dataset hosted on Kaggle:
[Apple Stock Data 2025 – Umer Haddii](https://www.kaggle.com/datasets/umerhaddii/apple-stock-data-2025)

The dataset includes historical trading data for AAPL from 1980 to 2025, including open/close prices, volume, and other relevant metrics.

## 🔗 Live Report

📊 View the full interactive HTML report hosted on GitHub Pages:
👉 [Apple Stock Analysis Report](https://oohmxi.github.io/AppleStockAnalysis/)

## Technologies Used

- R / RMarkdown
- tidyverse
- forecast
- lubridate
- ggplot2
- readr

## Project Goal

To develop a time series forecasting solution using Apple stock price data with a focus on clear visualizations, reproducible modeling, and business-applicable insights.

## Statistical Note: Central Limit Theorem

This project includes a demonstration of the Central Limit Theorem (CLT), a fundamental concept in probability and statistics. By simulating repeated samples from Apple’s daily returns, the notebook shows how sample means form a normal distribution — reinforcing the validity of inferential forecasting in time series analysis.

## Features

- Time series decomposition and exploratory data analysis
- ARIMA modeling for short-term price forecasting
- Visualizations of trends, seasonality, and predictions
- Parameter tuning and accuracy evaluation
- Renderable RMarkdown report in HTML/PDF

## About ARIMA Forecasting

ARIMA (AutoRegressive Integrated Moving Average) is a powerful statistical model used for time series forecasting. It predicts future values based on past observations, trends, and error patterns. This project uses ARIMA to forecast Apple’s future stock price by analyzing historical performance patterns.

## Project Structure

```
AppleStockAnalysis/
├── AppleStockAnalysis.Rmd
├── README.md
├── .gitignore
├── data/
│   └── apple_stock.csv
├── docs/
│   ├── index.html
│   └── image/
│       └── applestock.png
├── R/
│   ├── forecasting_utils.R
│   └── plotting_utils.R
```

## How to Run

1. Open `AppleStockAnalysis.Rmd` in RStudio
2. Knit to HTML or run manually:

```r
rmarkdown::render("AppleStockAnalysis.Rmd")
```

3. Output will be saved in `/docs`

## How This Would Scale

- Modularize time series functions in the `/R` directory
- Add a Shiny dashboard for user interactivity
- Automate data ingestion via Alpha Vantage or Yahoo Finance API
- Deploy as a hosted forecasting service with auto-refresh
- Add unit tests and continuous integration

## System Diagram

> **Mobile Friendly:** Embedded as image instead of Mermaid for full compatibility
> 📂 `./docs/image/applestock.png`

<p align="center">
  <img src="docs/image/applestock.png" alt="System Diagram" width="400"/>
</p>

## Future Enhancements

- Integrate live stock data via an API (e.g., Alpha Vantage or Yahoo Finance)
- Automate periodic data refresh with scheduled tasks
- Expand forecasting to multiple tickers for comparative analysis
- Add a Shiny dashboard for interactive exploration
- Export forecast results and visualizations to CSV and PNG
- Package the model as a reusable R module in the `/R/` directory
- Add unit tests for helper functions (e.g., data preprocessing, plotting)

## Contact

<table align="center">
  <tr>
    <td>
      <a href="mailto:ohern@bu.edu">
        <img src="https://img.shields.io/badge/Gmail-D14836?style=for-the-badge&logo=gmail&logoColor=white" alt="Email Badge">
      </a>
    </td>
    <td>
      <a href="https://github.com/oohmxi">
        <img src="https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white" alt="GitHub Badge">
      </a>
    </td>
    <td>
      <a href="https://linkedin.com/in/omarhlink">
        <img src="https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white" alt="LinkedIn Badge">
      </a>
    </td>
  </tr>
</table>



<p align="center"><em>In the spirit of Apple—simple, scalable, and slightly ahead of its time.<br>oohmxi Technologies, Inc.</em></p>
