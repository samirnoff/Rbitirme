library(ggplot2)
tarih <- seq(1925,1937)
miktar <- c(3000,30000,7000,30000,9000,75000,52000,58000,70000,90000,79000,93000,98000)
miktar2 <- c(7000,63000,58000,70000,150000,490000,700000,1100000,1900000,2100000,1600000,2200000,2850000)
trahommucadele <- data.frame(tarih,miktar,miktar2)
ggplot(trahommucadele, aes(x=tarih)) +
  geom_line(aes(y=miktar), size=1) + geom_point(aes(y=miktar), size=2)+
  geom_line(aes(y=miktar2), size=1, linetype="dashed") + geom_point(aes(y=miktar2), size=2) +
  labs(title = "TRAHOM MÜCADELE TEÞKÝLÂTI",
       subtitle = "Hastane ve Dispanserler Faaliyeti
       ",
       caption = "1925 —1937") +
  theme_classic() +
  theme(panel.grid.major = element_line(colour = "black", size = 1)) +
  theme(plot.title = element_text(hjust = 0.5, size = 17, face = "bold")) +
  theme(plot.subtitle = element_text(hjust = 0.5, size = 17, face = "bold.italic")) +
  theme(axis.title = element_blank())  +
  theme(plot.caption = element_text(hjust = 0.5, vjust = 157, face = "bold", size = 17)) +
  theme(axis.text.x = element_text(size=15, face="bold", vjust = 0.5, angle = 90)) +
  theme(axis.text.y = element_text(size=12, face="bold")) +
scale_x_continuous(
  limits = c(1925,1937),
  breaks = seq(1925,1937),
  labels = c("1925","1926","1927","1928","1929","1930","1931","1932","1933","1934","1935","1936","1937")
  ) +
  scale_y_continuous(
    limits = c(0,3000000),
    breaks = c(0,2000,4000,6000,8000,10000,20000,40000,60000,80000,100000,200000,400000,600000,800000,1000000,2000000,3000000),
    labels = c("0","2.000","4","6","8","10.000","20","40","60","80","100.000","200","400","600","800","1.000.000","2.000.000","3.000.000"),
    expand = c(0,0)
  ) +
  annotate(geom="rect", xmin = 1925.1, xmax = 1930.5, ymin = 2200000, ymax = 2600000, fill = "white" ) +
  annotate(geom="text", x=1929,y=2500000,label="Muayene Sayýsý", size= 5, fontface="bold.italic") +
  annotate(geom="rect", xmin = 1926, xmax = 1927, ymin = 2500000, ymax = 2509000, fill = "black" ) +
  annotate(geom="text", x=1929,y=2300000,label="Ýlaçlananlar    // ", size= 5, fontface="bold.italic") +
  annotate(geom="text", x=1926.5,y=2300000,label="- - - - ", size= 5, fontface="bold")
  