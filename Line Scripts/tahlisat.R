library(ggplot2)
ay <- rep(c(1:12),5)
uc <- c(10,25,40,51,62,80,89,111,122,138,151,172)
dort <- c(14,30,42,60,80,90,115,130,150,163,180,198)
bes <- c(18,32,45,62,82,100,120,140,152,170,187,207)
alti <- c(22,42,60,80,105,130,147,162,180,200,220,240)
yedi <- c(30,60,80,100,120,140,163,181,200,220,240,260)
deger <- c(uc,dort,bes,alti,yedi)
grup <- rep(c("1933","1934","1935","1936","1937"), each = length(uc))

tahsilat <- data.frame(ay, deger, grup)

ggplot(tahsilat, aes(x = ay)) +
  geom_line(data = subset(tahsilat, grup == "1933"), aes(y = uc), linetype = "dashed", size = 1) +
  geom_line(data = subset(tahsilat, grup == "1934"), aes(y = dort), size = 1) +
  geom_line(data = subset(tahsilat, grup == "1935"), aes(y = bes - 0.7)) + 
  geom_line(data = subset(tahsilat, grup == "1935"), aes(y = bes + 0.7)) +
  geom_line(data = subset(tahsilat, grup == "1936"), aes(y = alti), linetype = "dashed", size = 1.2) + 
    geom_line(data = subset(tahsilat, grup == "1936"), aes(y = alti - 0.7)) + 
    geom_line(data = subset(tahsilat, grup == "1936"), aes(y = alti + 0.7)) +
  geom_line(data = subset(tahsilat, grup == "1937"), aes(y = yedi), size = 1.4) +
  geom_point(data = subset(tahsilat, grup == "1933"), aes(y = uc), shape = 21,stroke = 1.5, size = 1.8) +
  geom_point(data = subset(tahsilat, grup == "1934"), aes(y = dort), shape = 21, stroke = 1.5, size = 1.8) +
  geom_point(data = subset(tahsilat, grup == "1935"), aes(y = bes), shape = 21, stroke = 1.5, size = 1.8) +
  geom_point(data = subset(tahsilat, grup == "1936"), aes(y = alti), shape = 21, stroke = 1.5,size = 1.8) +
  geom_point(data = subset(tahsilat, grup == "1937"), aes(y = yedi), shape = 21, stroke = 1.5, size = 1.5) +
  ggtitle(label = "TAHSİLATIN SON BEŞ YILLIK İNKİŞAF SEYRİ  .\n") +
  theme_classic() +
  coord_cartesian(clip = 'off') +
  annotate("rect", color = "white", fill = "white", xmin = -0.2, xmax = 0.4, ymin = seq(35,275,40), ymax = seq(45,285,40)) +
  annotate("rect", color = "white", fill = "white", xmin = 12.6, xmax = 13.2, ymin = seq(35,275,40), ymax = seq(45,285,40)) +
  annotate("text", color = "black", x = c(0.25,12.9), y = 41, label = "40", fontface = "bold") +
  annotate("text", color = "black", x = c(0.25,12.9), y = 81, label = "80", fontface = "bold") +
  scale_x_continuous(breaks = c(1:12),
                     labels = c(paste(as.roman(1:12))),
                     limits = c(-0.2,13.2),
                     expand = c(0,0),
                     sec.axis = dup_axis()) +
  scale_y_continuous(breaks = seq(0,280,40),
                     labels = c("","","","120","160","200","240","280"),
                     limits = c(0,300),
                     expand = c(0,0),
                     sec.axis = dup_axis()) +
  theme(panel.grid.major = element_line(colour = "black", size = 1),
        panel.grid.minor.y = element_line(color = "black", size = 0.7),
        plot.margin = unit(c(1,0,1,0), "lines"),
        axis.title = element_blank(),
        axis.text.y.left = element_text(size = 11, face = "bold", color = "black", vjust = 0.4, hjust = 2.35),
        axis.text.y.right = element_text(size = 11, face = "bold", color = "black", vjust = 0.4, hjust = -1.32),
        axis.text.x.bottom = element_text(size = 12, face = "bold", color = "black"),
        axis.text.x.top = element_blank(),
        axis.ticks = element_blank(),
        axis.line.y = element_blank(),
        axis.line.x = element_line(size = 1.6),
        plot.title = element_text(hjust = 0.5, face = "bold")) +
  annotate("text", x = c(0.35,12.67), y = 10, label = "Milyon", fontface = "bold", size = 3.5) +
  annotate("text", x = c(0.4,12.9), y = 0, label = "Ay", fontface = "bold", vjust = 1.5, size = 4.5)
