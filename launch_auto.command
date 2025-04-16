#!/bin/bash

echo "🔁 Rendering AppleStockAnalysis.Rmd..."
Rscript -e "rmarkdown::render('AppleStockAnalysis.Rmd')"

echo "📁 Moving HTML to docs/index.html ..."
mv -f AppleStockAnalysis.html docs/index.html

echo "✅ Git staging..."
git add docs/index.html

echo "📌 Committing changes..."
git commit -m "build: re-rendered report and updated GitHub Pages index"

echo "🚀 Pushing to GitHub..."
git push origin main

echo "🌐 Deployed! View your report at: https://oohmxi.github.io/AppleStockAnalysis/"
