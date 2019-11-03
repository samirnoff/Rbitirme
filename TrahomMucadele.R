Sys.setlocale(locale = "Turkish")
library(ggplot2)
tarih <- seq(1925,1937)
miktar <- c(3000,14500,7000,14500,9000,21500,17500,18500,20800,23500,21700,24000,24500)
miktar2 <- c(7000,19800,18500,20800,26800,32500,39500,46000,52500,54000,49000,54300,60000)
trahommucadele <- data.frame(tarih,miktar,miktar2)
ggplot(trahommucadele, aes(x=tarih)) +
  geom_line(aes(y=miktar), size=1.3) + geom_point(aes(y=miktar), size=3)+
  geom_line(aes(y=miktar2), size=1.3, linetype="dashed") + geom_point(aes(y=miktar2), size=2) +
  labs(title = "TRAHOM MÜCADELE TEŞKİLÂTI",
       subtitle = "Hastane ve Dispanserler Faaliyeti\n",
       caption = "1925 \u2013 1937") +
  theme_classic() +
  theme(panel.grid.major = element_line(colour = "black", size = 1)) +
  theme(plot.title = element_text(hjust = 0.5, size = 17, face = "bold")) +
  theme(plot.subtitle = element_text(hjust = 0.5, size = 17, face = "bold.italic")) +
  theme(axis.title = element_blank())  +
  theme(plot.caption = element_text(hjust = 0.5, vjust = 157, face = "bold", size = 17)) +
  theme(axis.text.x = element_text(size=15, face="bold",hjust = 0.7, vjust = 0.5, angle = 89.9, colour = "black")) +
  theme(axis.text.y = element_text(size=12, face="bold", colour = "black")) +
  theme(axis.line.x = element_line(size = 1.4)) +
  theme(axis.line.y = element_line(size = 1.4)) +
  
  scale_x_continuous(
    limits = c(1925,1937),
    breaks = seq(1925,1937),
    labels = c("1925","1926","1927","1928","1929","1930","1931","1932","1933","1934","1935","1936","1937"),
    expand = c(0,0.3)
  ) +
  scale_y_continuous(
    limits = c(0,61000),
    breaks = c(0,2000,4000,6000,8000,10000,13000,16000,19000,22000,25000,29000,33000,37000,41000,45000,53000,61000),
    labels = c("0","2.000","4","6","8","10.000","20","40","60","80","100.000","200","400","600","800","1.000.000","2.000.000","3.000.000"),
    expand = c(0,0)
  ) +
  annotate(geom="rect", xmin = 1925.1, xmax = 1930.5, ymin = 53500, ymax = 60000, fill = "white" ) +
  annotate(geom="text", x=1928.5,y=58000,label="Muayene Sayısı", size= 5, fontface="bold.italic") +
  annotate(geom="rect", xmin = 1925.5, xmax = 1926.5, ymin = 57900, ymax = 58000, fill = "black" ) +
  annotate(geom="text", x=1928.5,y=55000,label="İlaçlananlar  \" ", size= 5, fontface="bold.italic") +
  annotate(geom="text", x=1926,y=55000,label="- - - - ", size= 5, fontface="bold")


# An alternative solutin for adjusting thickness of vertical/horizontal grid lines and
# automating the legend with respect to linetype

Sys.setlocale(locale = "Turkish")
library(ggplot2)
tarih <- seq(1925,1937)
miktar <- c(3000,14500,7000,14500,9000,21500,17500,18500,20800,23500,21700,24000,24500)
miktar2 <- c(7000,19800,18500,20800,26800,32500,39500,46000,52500,54000,49000,54300,60000)
trahommucadele <- data.frame(tarih,miktar,miktar2)
ggplot(trahommucadele, aes(x=tarih)) +
  geom_line(aes(y=miktar,linetype="dashed"), size=1.3) + geom_point(aes(y=miktar), size=3)+
  geom_line(aes(y=miktar2,linetype="solid"), size=1.3) + geom_point(aes(y=miktar2), size=2) +
  labs(title = "TRAHOM MÜCADELE TEŞKİLÂTI",
       subtitle = "Hastane ve Dispanserler Faaliyeti\n",
       caption = "1925 \u2013 1937") +
  theme(panel.background = element_rect(fill = "white"),panel.grid.major.y = element_line(colour = "black", size = 0.5),panel.grid.major.x = element_line(colour = "black", size = 1.4)) +
  theme(plot.title = element_text(hjust = 0.5, size = 17, face = "bold")) +
  theme(plot.subtitle = element_text(hjust = 0.5, size = 17, face = "bold.italic")) +
  theme(axis.title = element_blank())  +
  theme(plot.caption = element_text(hjust = 0.5, vjust = 157, face = "bold", size = 17)) +
  theme(axis.text.x = element_text(size=15, face="bold",hjust = 0.7, vjust = 0.5, angle = 89.9, colour = "black")) +
  theme(axis.text.y = element_text(size=12, face="bold", colour = "black")) +
  theme(axis.line.x = element_line(size = 1.6, colour = "black")) +
  theme(axis.line.y = element_line(size = 1.4, colour = "black")) +
  
  scale_x_continuous(
    limits = c(1925,1937),
    breaks = seq(1925,1937),
    labels = c("1925","1926","1927","1928","1929","1930","1931","1932","1933","1934","1935","1936","1937"),
    expand = c(0,0.3)
  ) +
  scale_y_continuous(
    limits = c(0,61000),
    breaks = c(0,2000,4000,6000,8000,10000,13000,16000,19000,22000,25000,29000,33000,37000,41000,45000,53000,61000),
    labels = c("0","2.000","4","6","8","10.000","20","40","60","80","100.000","200","400","600","800","1.000.000","2.000.000","3.000.000"),
    expand = c(0,0)
  ) +
  scale_linetype_discrete(name="", labels=c("Muayene sayısı","İlaçlananlar  \" "))+
theme(legend.title=element_blank(),legend.text = element_text(size=12,face = "bold.italic"),legend.position=c(0.04,0.98), 
      legend.justification=c(0,1), legend.direction='vertical',legend.spacing.x = unit(0.15,"cm"),
      legend.key = element_rect(size = 5, fill = "white", colour = "white"))+
  guides(fill=guide_legend(override.aes = list(size = 1.2), keywidth=0.78, keyheight=0.30,default.unit="inch")) 
