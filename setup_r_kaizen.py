import os
from pathlib import Path

# Setup for Kaizen-ready R project structure
def create_kaizen_r_project(project_name):
    base_path = Path.cwd() / project_name
    folders = ["data", "plots", "R", "docs"]
    files = {
        "README.md": "# [Project Title]\n\n_Replace this with a short summary._\n",
        "kaizen.md": "# Kaizen Log\n\n## Week 1\n- ✅ Initialized structure\n- ✅ Created folders and README\n- 🚧 Next: Import Apple stock data and explore trends\n",
        ".gitignore": ".Rhistory\n.Rproj.user/\n.RData\n.DS_Store\n*.Rproj\n.vscode/\n*.code-workspace\n.Rcheck/\n*.rds\n*.html\n*.pdf\n__pycache__/\n"
    }

    os.makedirs(base_path, exist_ok=True)

    for folder in folders:
        os.makedirs(base_path / folder, exist_ok=True)

    for file_name, content in files.items():
        with open(base_path / file_name, "w", encoding="utf-8") as f:
            f.write(content)

    # Placeholder Rmd file
    rmd_content = """---
title: \"Apple Stock Time Series Forecasting\"
author: \"Mr. O\"
output: html_document
---

```{r setup, include=FALSE}
library(tidyverse)
library(forecast)
library(lubridate)
```

## Introduction

This report explores the time series analysis and forecasting of Apple stock closing prices using ARIMA models and visual trend analysis.

## Goals
- Import and clean Apple stock data
- Visualize long-term and short-term trends
- Apply ARIMA and moving average models
- Evaluate forecast accuracy
"""
    with open(base_path / f"{project_name}.Rmd", "w", encoding="utf-8") as f:
        f.write(rmd_content)

    print(f"\n✅ {project_name} scaffold ready at: {base_path}\n")

if __name__ == "__main__":
    pname = input("Enter R Project Name (no spaces): ").strip()
    create_kaizen_r_project(pname)
