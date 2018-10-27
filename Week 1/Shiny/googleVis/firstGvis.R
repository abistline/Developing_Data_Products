# Testing googleVis - be sure to change flash settings to "Allow"

suppressPackageStartupMessages(library(googleVis))
M = gvisMotionChart(Fruits, "Fruit", "Year",
                    options=list(width=600, height=400))
print(M, "chart")
plot(M)

