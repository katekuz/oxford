#https://www.scribbr.com/statistics/linear-regression-in-r/

library(ggplot2)
library(dplyr)
library(broom)
library(ggpubr)
summary(income.data)
plot(happiness ~ income, data = income.data)

income.happiness.lm <- lm(happiness ~ income, data = income.data)

summary(income.happiness.lm)

par(mfrow=c(2,2))
plot(income.happiness.lm)
par(mfrow=c(1,1))



income.graph<-ggplot(income.data, aes(x=income, y=happiness))+
  geom_point()
income.graph
