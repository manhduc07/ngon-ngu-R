library(nycflights13)
library(ggplot2)
library(dplyr)

#1 vẽ scatterplot

alaska_flights <- flights %>%
  filter(carrier == "AS")
# basic scatterplot
ggplot(data=alaska_flights, aes(x=dep_delay, y=arr_delay)) + 
  geom_point()

#2 vẽ đồ thị Linegraphs
early_january_weather <- weather %>%
  filter(origin == "EWR" & month == 1 & day <= 15)
ggplot(data = early_january_weather,
       mapping = aes(x = time_hour, y = temp)) +
  geom_line()

#3 vẽ Đồ thị Histograms
ggplot(weather, aes(x=temp)) + 
  geom_histogram()

#4 Biểu đồ boxplot

ggplot(data = weather, mapping = aes(x = factor(month), y = temp)) +
  geom_boxplot()

#5 Biểu đồ barplot
ggplot(data = flights, mapping = aes(x = carrier)) +
  geom_bar()
 