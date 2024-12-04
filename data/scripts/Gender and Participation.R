library(tidyverse)
library(ggplot2)
data <-read.csv("WAAR+Project+Dataset+v1.0.csv")

summary_data <- aggregate(frontline ~ region, data, mean, na.rm = TRUE)


ggplot(summary_data, aes(x = factor(region), y = frontline)) +
  geom_bar(stat = "identity", fill = "red") +
  labs(title = "Average Frontline Participation by Region",
       x = "Region",
       y = "Average Female Frontline Participation") +
  theme_minimal()



ggplot(summary_data, aes(x = factor(region), y = noncombat)) +
  geom_bar(stat = "identity", fill = "blue") +
  labs(title = "Average noncombat Participation by Region",
       x = "Region",
       y = "Average Female noncombat Participation") +
  theme_minimal()

summary_data <- aggregate(lead ~ region, data, mean, na.rm = TRUE)

ggplot(summary_data, aes(x = factor(region), y = lead)) +
  geom_bar(stat = "identity", fill = "purple") +
  labs(title = "Average female lead by Region",
       x = "Region",
       y = "Average Female lead") +
  theme_minimal()

summary_data <- aggregate(frontline ~ muslim, data, mean, na.rm = TRUE)
ggplot(summary_data, aes(x = factor(muslim), y = frontline)) +
  geom_bar(stat = "identity", fill = "red") +
  labs(title = "Average Frontline Participation by muslim",
       x = "Region",
       y = "Average Female Frontline Participation") +
  theme_minimal()

summary_data <- aggregate(noncombat ~ muslim, data, mean, na.rm = TRUE)
ggplot(summary_data, aes(x = factor(muslim), y = noncombat)) +
  geom_bar(stat = "identity", fill = "blue") +
  labs(title = "Average noncombat Participation by muslim",
       x = "Region",
       y = "Average Female noncombat Participation") +
  theme_minimal()

summary_data <- aggregate(lead ~ muslim, data, mean, na.rm = TRUE)
ggplot(summary_data, aes(x = factor(muslim), y = lead)) +
  geom_bar(stat = "identity", fill = "purple") +
  labs(title = "Average female lead by muslim",
       x = "Region",
       y = "Average Female lead") +
  theme_minimal()

summary_data <- aggregate(frontline ~ developed, data, mean, na.rm = TRUE)
ggplot(summary_data, aes(x = factor(developed), y = frontline)) +
  geom_bar(stat = "identity", fill = "red") +
  labs(title = "Average Frontline Participation by income",
       x = "Region",
       y = "Average Female Frontline Participation") +
  theme_minimal()

summary_data <- aggregate(noncombat ~ developed, data, mean, na.rm = TRUE)
ggplot(summary_data, aes(x = factor(developed), y = noncombat)) +
  geom_bar(stat = "identity", fill = "blue") +
  labs(title = "Average noncombat Participation by income",
       x = "Region",
       y = "Average Female noncombat Participation") +
  theme_minimal()

summary_data <- aggregate(lead ~ developed, data, mean, na.rm = TRUE)
ggplot(summary_data, aes(x = factor(developed), y = lead)) +
  geom_bar(stat = "identity", fill = "purple") +
  labs(title = "Average female lead by income",
       x = "Region",
       y = "Average Female lead") +
  theme_minimal()
