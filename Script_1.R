library(tidyverse)

#load the data as table
penguin <- read.table("data/penguin_data.txt", header = T)

#run a linear regression
mod1 <- lm(bill_length_mm ~ flipper_length_mm, penguin)
summary(mod1)
anova(mod1)

#do some plots using ggplot2
p1 <- ggplot() + 
  geom_line(data = mod1, aes(flipper_length_mm, bill_length_mm), alpha = 0.2)+
  theme_bw()
p1

ggsave("fig1.jpg")

##ch ch ch changess

#one more time