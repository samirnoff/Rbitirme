library(ggplot2)
tarih <- seq(1902,1925)
miktar <- c(2300000,2300500,2200000,2400000,2500000,2600000,2500000,2700000,3000000,NA,NA,NA,NA,NA,5200000,5300000,5700000,5200000,5200000,5100000,5000000,4700000,5500000,6100000)
tarih2 <- c(1910,1916)
miktar2 <- c(3000000,5200000)
duyunu <- data.frame(tarih,miktar,tarih2,miktar2)
ggplot(duyunu, aes(tarih)) +
  geom_line(aes(y=miktar), size=1.3) + geom_point(aes(y=miktar), size=2) +
  geom_line(aes(x=tarih2, y=miktar2), linetype="dashed",size=1.3)+
  labs(title = "Duyunu Umumiye ve Devlet Ýnhisarý
         Zamanlarýndaki safi içki varidatý") +
  theme_classic() +
  theme(panel.grid.major = element_line(colour = "black", size = 1)) +
  theme(plot.title = element_text(hjust = 0.5, size = 25, face = "bold.italic")) +
  theme(axis.title = element_blank())  +
  theme(axis.text.x = element_text(size=15, face="bold", vjust = -0.3, angle = 90, colour = "black")) +
  theme(axis.text.y = element_text(size=15, face="bold", vjust = 0, colour = "black")) +
  theme(axis.line.x = element_line(size = 2)) +
  theme(axis.line.y = element_line(size = 1.5)) +
  scale_x_continuous(
    limits = c(1901,1926),
    breaks = seq(1902,1926),
    labels = c("     2","     3","     4","     5","     6","     7","     8","     9","1910"," "," "," "," "," ",
               "1927","     8","     9","1930","     1","     2","     3","     4","     5","     6","     7"),
    expand = c(0,0)
  ) + 
  scale_y_continuous(
    limits = c(1000000,7000000),
    breaks = seq(1000000,7000000, by=200000),
    labels = c("1000000","2          ","4          ","6          ","8          ","2000000","2          ","4          ","6          ",
               "8          ","3000000","2          ","4          ","6          ","8          ","4000000","2          ","4          ",
               "6          ","8          ","5000000","2          ","4          ","6          ","8          ","6000000","2          ",
               "lira cari    "," "," "," "),
    expand = c(0,0)
    ) +
  annotate(geom="text", x=1913.5,y=6900000,label= " \"1 altýn lira   10,60 carilira\" ", size= 5, fontface="bold.italic") +
  annotate(geom="rect", xmin = 1908.5, xmax = 1918.5, ymin = 6740000, ymax = 6770000, fill = "black" ) +
  annotate(geom="rect", xmin = 1908.5, xmax = 1918.5, ymin = 6700000, ymax = 6730000, fill = "black" ) 
