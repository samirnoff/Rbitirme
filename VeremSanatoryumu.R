Sys.setlocale(locale = "Turkish")
library(ggplot2)
tarih <- seq(1924,1937)
miktar <- c(20,120,110,90,89,120,125,133,130,207,240,265,290,290)
miktar2 <- c(NA,310,400,390,392,395,420,460,455,550,565,580,640,660)
verem <- data.frame(tarih,miktar,miktar2)
ggplot(verem, aes(x=tarih)) +
  geom_line(aes(y=miktar), size=1.3) + geom_point(aes(y=miktar), size=3)+
  geom_line(aes(y=miktar2), size=1.3, linetype="dashed") + geom_point(aes(y=miktar2), size=3) +
  labs(title = "HEYBELİADA VEREM SANATORYUMU MESAİSİ
  1924 \U2013 1937",
       subtitle = "Yarım Lugaritmik Diyağram") +
  theme_classic() +
  theme(panel.grid.major = element_line(colour = "black", size = 1)) +
  theme(plot.title = element_text(hjust = 0.5, size = 17, face = "bold")) +
  theme(plot.subtitle = element_text(hjust = 0.5, size = 17, face = "bold.italic")) +
  theme(axis.title = element_blank())  +
  theme(axis.text.x = element_text(size=15,  vjust = 0.7, hjust = 1, angle = 89.9, colour = "black")) +
  theme(axis.text.y = element_text(size=12,  colour = "black")) +
  theme(axis.line.x = element_line(size = 1.4)) +
  theme(axis.line.y = element_line(size = 1.4)) +
  theme(plot.margin = unit(c(1,1,1,2), "lines")) +
  scale_x_continuous(
    limits = c(1924,1937),
    breaks = seq(1924,1937),
    labels = c("1924","1925","1926","1927","1928","1929","1930","1931","1932","1933","1934","1935","1936","1937"),
    expand = c(0,0.5)
  ) +
  scale_y_continuous(
    limits = c(0,670),
    breaks = c(0,50,100,140,180,220,250,280,300,320,340,370,470,570,670),
    labels = c("0","50","100","2","3","4","500","6","7","8","9","1.000","5.000","10.000","14.000"),
    expand = c(0,0)
  ) +
  annotate(geom="rect", xmin = 1925.1, xmax = 1930.9, ymin = 540, ymax = 620, fill = "white" ) +
  annotate(geom="text", x=1928.2,y=590,label="Yatırılarak tedavi", size= 4.7, fontface="bold.italic") +
  annotate(geom="rect", xmin = 1925.5, xmax = 1926.5, ymin = 588, ymax = 590, fill = "black" ) +
  annotate(geom="text", x=1928.8,y=560,label="Laboratuvar ve Rontken ", size= 4.7, fontface="bold.italic") +
  annotate(geom="text", x=1926.1,y=560,label="- - - -  ", size= 6, fontface="bold")


## An alternative solution for adjusting major grid lines and the legend

Sys.setlocale(locale = "Turkish")
library(ggplot2)
tarih <- seq(1924,1937)
miktar <- c(20,120,110,90,89,120,125,133,130,207,240,265,290,290)
miktar2 <- c(NA,310,400,390,392,395,420,460,455,550,565,580,640,660)
verem <- data.frame(tarih,miktar,miktar2)
ggplot(verem, aes(x=tarih)) +
  geom_line(aes(y=miktar,linetype="dashed"), size=1.3) + geom_point(aes(y=miktar), size=3)+
  geom_line(aes(y=miktar2,linetype="solid"), size=1.3) + geom_point(aes(y=miktar2), size=3) +
  labs(title = "HEYBELİADA VEREM SANATORYUMU MESAİSİ
       1924 \U2013 1937",
       subtitle = "Yarım Lugaritmik Diyağram") +
  theme(panel.background = element_rect(fill = "white"),panel.grid.major.y = element_line(colour = "black", size = 0.7),
        panel.grid.major.x = element_line(colour = "black", size = 1.4)) +
  theme(plot.title = element_text(hjust = 0.5, size = 17, face = "bold")) +
  theme(plot.subtitle = element_text(hjust = 0.5, size = 17, face = "bold.italic")) +
  theme(axis.title = element_blank())  +
  theme(axis.text.x = element_text(size=12, face="bold", vjust = 0.7, hjust = 1, angle = 89.9, colour = "black")) +
  theme(axis.text.y = element_text(size=12, face="bold", colour = "black")) +
  theme(axis.line.x = element_line(size = 1.4)) +
  theme(axis.line.y = element_line(size = 1.4)) +
  theme(plot.margin = unit(c(1,1,1,2), "lines")) +
  scale_x_continuous(
    limits = c(1924,1937),
    breaks = seq(1924,1937),
    labels = c("1924","1925","1926","1927","1928","1929","1930","1931","1932","1933","1934","1935","1936","1937"),
    expand = c(0,0.5)
  ) +
  scale_y_continuous(
    limits = c(0,670),
    breaks = c(0,50,100,140,180,220,250,280,300,320,340,370,470,570,670),
    labels = c("0","50","100","2","3","4","500","6","7","8","9","1.000","5.000","10.000","14.000"),
    expand = c(0,0)
  )+
  scale_linetype_discrete(name="", labels=c("Yatırılarak tedavi","Laboratuvar ve Rontken "))+
  theme(legend.title=element_blank(),legend.text = element_text(size=12,face = "bold.italic"),legend.position=c(0.1,0.91), 
        legend.justification=c(0,1), legend.direction='vertical',legend.spacing.x = unit(0.15,"cm"),
        legend.key = element_rect(size = 5, fill = "white", colour = "white"))+
  guides(fill=guide_legend(override.aes = list(size = 1.2), keywidth=0.78, keyheight=0.30,default.unit="inch")) 


