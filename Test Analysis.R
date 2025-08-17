## This is just a quick test analysis
rm(list = ls())

library(ISLR2); library(ggplot2); library(dplyr)

data(Auto)

model1 <- lm(horsepower ~ mpg + weight + acceleration + displacement + cylinders, data = Auto)
model_simple <- lm(horsepower ~ weight, data = Auto)

summary(model1)
Auto$yhat <- predict(model1)
Auto$simple <- predict(model_simple)

ggplot(data = Auto) +
  geom_point(aes(weight, horsepower), color = 'blue') +
  geom_line(aes(weight, simple), color = 'maroon')

summary(Auto)