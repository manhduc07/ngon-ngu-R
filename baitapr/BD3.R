#bi???u ð??? 3
library(tidyverse)
library(lubridate)

theme_set(theme_minimal())

covid19_raw <- read_csv("https://github.com/CSSEGISandData/COVID-19/raw/master/csse_covid_19_data/csse_covid_19_time_series/time_series_covid19_confirmed_global.csv")

covid19 <- covid19_raw %>%
  pivot_longer(-c(`Province/State`, `Country/Region`, Lat, Long),
               names_to = "date",
               values_to = "confirmed_n"
  ) %>%
  select(-c(Lat, Long)) %>%
  rename(
    province_state = `Province/State`,
    country_region = `Country/Region`
  ) %>%
  mutate(date = mdy(date)) %>%
  group_by(country_region, date) %>%
  summarise(confirmed_n = sum(confirmed_n)) %>%
  ungroup()
ggplot(df1[1:11,], aes(x=Deaths, y=Province_State)) +
  geom_col(aes(x=Deaths, y=Province_State, fill = Province_State)) + 
  labs(title="Bi???u d??? th??? hi???n s??? lu???ng ca t??? vong do covid 19 du???c xác nh???n ??? m???t s??? bang/thành ph??? t???i M??? trong ngày 01-01-2021",x = "Deaths", y="Province")