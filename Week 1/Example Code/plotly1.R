library(plotly)

plot_ly(mtcars, x = ~wt, y = ~mpg, mode="markers", color=~as.factor(cyl), size=~hp)

set.seed(2016-07-21)
temp = rnorm(100, mean=30, sd=5)
pressure = rnorm(100)
dtime = 1:100
plot_ly(x=temp, y=pressure, z=dtime, type="scatter3d", mode="markers", color=temp)

library(tidyr)
library(dplyr)
data("EuStockMarkets")

stocks = as.data.frame(EuStockMarkets) %>%
  gather(index, price) %>%
  mutate(time=rep(time(EuStockMarkets), 4))

plot_ly(stocks, x=~time, y=~price, mode="line", color=~index)
