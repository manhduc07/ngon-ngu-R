# Bieu do 15
library('ggplot2')
# Outside bars
df <- read.csv('https://raw.githubusercontent.com/CSSEGISandData/COVID-19/master/csse_covid_19_data/csse_covid_19_time_series/time_series_covid19_deaths_global.csv',
               header = TRUE)

peru = df[275,5:ncol(df)]
head(peru)

str(peru)
so_ngay = ncol(peru)
so_ca_tu_vong <- c(1:ncol(peru))


for (i in so_ca_tu_vong){
  so_ca_tu_vong[i] <- peru[[i]]
}


so_ca_tu_vong
so_ca_tu_vong_10 = so_ca_tu_vong[(so_ngay-9):so_ngay]
so_ca_tu_vong_10
ngay = names(peru)
ngay_10 = ngay[(so_ngay-9):so_ngay]
ngay_10

data_plot_10 = data.frame(ngay=ngay_10, so_ca_tu_vong= so_ca_tu_vong_10)
data_plot_10
ggplot(data = data_plot_10, aes(x=ngay, y=so_ca_tu_vong))+
  geom_bar(color ='black' ,fill = 'green',stat="identity")+
  geom_text(aes(label=so_ca_tu_vong), vjust=-0.3, size=3.5)+
  labs(title=" CA TU VONG TRONG 10 NGAY GAN NHAT CUA PERU",
       x ="Ngay", y = "ca tu vong")