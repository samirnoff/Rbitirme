library(ggplot2)
tarih <- seq(1902,1910)
miktar <- c(2300000,2300500,2200000,2400000,2500000,2600000,2500000,2700000,3000000)
duyunu <- data.frame(tarih,miktar)
ggplot(duyunu, aes(x=tarih)) +
  geom_line(aes(y=miktar), size=1.5) + geom_point(aes(y=miktar), size=2) +
  

  labs(title = "Duyunu Umumiye ve Devlet Ýnhisarý
         Zamanlarýndaki safi içki varidatý") +
  theme_classic() +
  theme(panel.grid.major = element_line(colour = "black", size = 1)) +
  theme(plot.title = element_text(hjust = 0.5, size = 25, face = "bold.italic")) +
  theme(axis.title = element_blank())  +
  theme(axis.text.x = element_text(size=15, face="bold", vjust = -0.3, angle = 90)) +
  theme(axis.text.y = element_text(size=15, face="bold")) +
  scale_x_continuous(
    limits = c(1902,1926),
    breaks = seq(1902,1926),
    labels = c("     2","     3","     4","     5","     6","     7","     8","     9","1910"," "," "," "," "," ",
               "1927","     8","     9","1930","     1","     2","     3","     4","     5","     6","     7")
  ) + 
  scale_y_continuous(
    limits = c(1000000,6800000),
    breaks = seq(1000000,6400000, by=200000),
    labels = c("1000000","2          ","4          ","6          ","8          ","2000000","2          ","4          ","6          ",
               "8          ","3000000","2          ","4          ","6          ","8          ","4000000","2          ","4          ",
               "6          ","8          ","5000000","2          ","4          ","6          ","8          ","6000000","2          ",
               "lira cari    "),
    expand = c(0,0)
    ) +
  annotate(geom="text", x=1910,y=6500000,label="1 altýn lira 10,60 carilira", size= 5, fontface="bold.italic")
