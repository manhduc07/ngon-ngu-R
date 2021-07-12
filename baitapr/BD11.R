# Bieu do 11: 
library('ggplot2')
# Outside bars
df <- read.csv('https://raw.githubusercontent.com/CSSEGISandData/COVID-19/master/csse_covid_19_data/csse_covid_19_time_series/time_series_covid19_recovered_global.csv',
               header = TRUE)

nhat_ban = df[260,5:ncol(df)]
head(nhat_ban)

str(nhat_ban)
so_ngay = ncol(nhat_ban)
so_ca_phuc_hoi <- c(1:ncol(nhat_ban))


for (i in so_ca_phuc_hoi){
  so_ca_phuc_hoi[i] <- nhat_ban[[i]]
}


so_ca_phuc_hoi
so_ca_phuc_hoi_10 = so_ca_phuc_hoi[(so_ngay-9):so_ngay]
so_ca_phuc_hoi_10
ngay = names(nhat_ban)
ngay_10 = ngay[(so_ngay-9):so_ngay]
ngay_10

data_plot = data.frame(ngay=ngay, so_ca_phuc_hoi= so_ca_phuc_hoi)
data_plot

data_plot$ngay <- factor(data_plot$ngay, levels = ngay)
data_plot$ngay  # notice the changed order of factor levels

plot5 <- ggplot(data_plot, aes(ngay, so_ca_phuc_hoi, group = 1)) +
  geom_line(color="black", size=1.2) +
  labs(x = "Ngay", y = "So ca mac", 
       title = " SO CA PHUC HOI COVID 19 CUA Nh???t B???n")
plot5
