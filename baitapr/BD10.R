#bi???u �??? 10
covid <- read.csv('https://raw.githubusercontent.com/CSSEGISandData/COVID-19/master/csse_covid_19_data/csse_covid_19_daily_reports_us/01-01-2021.csv')
covid <- subset(covid, select = -c(People_Hospitalized, Hospitalization_Rate))
covid <- na.omit(covid)

library(ggplot2)
library(plotly)
library(gapminder)
library(forcats)
library(wesanderson)
library(tidyverse)
library(babynames)
library(viridis)


#install.packages("ggcharts")
#install.packages('ggplot2')
p3 <- ggplot(covid, aes(Confirmed, Active,
                        colour = Active, size = Active)) +
  geom_point() + 
  geom_smooth(method = 'loess', formula = 'y ~ x',
              fill = '#CC6600',colour = '#998099') + 
  theme_bw() + 
  labs(title = 'M???i quan h??? gi???a con ng�???i �ang ho???t �???ng v� �?? ��???c x�c nh???n ??? Hoa K???') 

ggplotly(p3)