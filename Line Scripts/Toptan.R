library(ggplot2)
tarih <- seq(1930,1937)
devlet <- c(NA,NA,80,90,140,180,105,225)
piyasa <- c(140,140,150,200,290,240,690,890)
toptan <- data.frame(tarih,devlet,piyasa)

ggplot(toptan, aes(x=tarih)) +
  geom_line(aes(y=devlet), size=1, linetype="dashed" ) +
  geom_line(aes(y=piyasa), size=1)  +
  geom_curve(aes(x = 1930, y = 170, xend = 1932, yend = 100), curvature = 0.15, size = 2.2) +
  geom_curve(aes(x = 1932, y = 100, xend = 1934, yend = 250), curvature = 0.2, size = 2.2) +
  geom_curve(aes(x = 1934, y = 250, xend = 1937, yend = 875), curvature = 0.09, size = 2.2) +
  geom_curve(aes(x = 1930, y = 105, xend = 1933, yend = 100), curvature = 0.09, size = 1.8, linetype="dashed") +
  geom_curve(aes(x = 1933, y = 100, xend = 1937, yend = 205), curvature = 0.01, size = 1.8, linetype="dashed") +
  labs(title = "SÜMER BANK FABRİKALARININ \n TOPTAN SATIŞ ENDEKSİ",
       subtitle = "1929 = 100") +
  theme_classic() +
  theme(panel.grid.major = element_line(colour = "black", size = 0.5)) +
  theme(plot.title = element_text(hjust = 0.5, size = 20)) +
  theme(plot.subtitle = element_text(hjust = 0.5, size = 16)) +
  theme(plot.margin = unit(c(1,1,1,1), "lines")) +
  theme(axis.line.y = element_blank(), axis.line.x = element_blank(),
        axis.text.x = element_text(color = "black", size = 13), 
        axis.text.y = element_text(color = "black", size = 13), 
        axis.ticks.y = element_blank(), axis.ticks.x = element_blank(), axis.title = element_blank()) +
  scale_x_continuous(limits = c(1930,1937), breaks = c(1930,1932,1934,1936,1937),
       labels = c("1930","32","34","36","1937"),
       expand = c(0,0)) +
  scale_y_continuous(limits = c(0,900), breaks = c(0,100,300,500,700,900),
       labels = c("0\n","100","300","500","700","900"),
       expand = c(0,0),
       sec.axis = dup_axis()) +
  coord_cartesian(clip = 'off') +
  annotate(geom="text", x=1931.5 ,y=200,label="Asli rakamlar", size= 4, fontface="bold") +
  annotate(geom="text", x=1934.5 ,y=220,label="Asli rakamlar", size= 4, fontface="bold") +
  annotate(geom="text", x=1934.15 ,y=380,label="2° Trend", size= 4, fontface="bold") +
  annotate(geom="text", x=1935 ,y=120,label="2° Trend", size= 4, fontface="bold") +
  annotate(geom="text", x=1931 ,y=0,label="31", size= 4.5, vjust = 1.4) +
  annotate(geom="text", x=1933 ,y=0,label="33", size= 4.5, vjust = 1.4) +
  annotate(geom="text", x=1935 ,y=0,label="35", size= 4.5, vjust = 1.4) +
  annotate("segment", x = 1931 , xend = 1931, y = 0, yend = 20, size = 0.5) +
  annotate("segment", x = 1933 , xend = 1933, y = 0, yend = 20, size = 0.5) +
  annotate("segment", x = 1935 , xend = 1935, y = 0, yend = 20, size = 0.5) +
  annotate("rect", xmin = 1931.5 , xmax = 1933, ymin = 800, ymax = 899, colour = "white", fill = "white") +
  annotate(geom="text", x=1932 ,y=860,label="DEVLETE SATIŞ", size= 4, fontface="bold") +
  annotate(geom="text", x=1932 ,y=830,label="PİYASAYA SATIŞ", size= 4, fontface="bold") +
  annotate("segment", x = 1930.5 , xend = 1931.3, y = 830, yend = 830, size = 0.5) +
  annotate("segment", x = 1930.5 , xend = 1931.3, y = 825, yend = 825, size = 1.5) +
  annotate("segment", x = 1930.5 , xend = 1931.3, y = 860, yend = 860, size = 0.5, linetype = "dashed") +
  annotate("segment", x = 1930.5 , xend = 1931.3, y = 855, yend = 855, size = 1.2, linetype = "dashed") +
  annotate("point" , x=1931, y=140) + annotate("point" , x=1932, y=150) + annotate("point" , x=1933, y=200) +
  annotate("point" , x=1936, y=690) +
  geom_curve(x=1931.7 , y= 180, xend=1931.8, yend=150, arrow=arrow(length = unit(0.25,"cm")), size=1, color="black", curvature = -0.2) +
  geom_curve(x=1934.4 , y= 360, xend=1934.5, yend=330, arrow=arrow(length = unit(0.25,"cm")), size=1, color="black", curvature = 0.2) +
  geom_curve(x=1935 , y= 200, xend=1935.1, yend=180, arrow=arrow(length = unit(0.25,"cm")), size=1, color="black", curvature = -0.2) +
  geom_curve(x=1934.65 , y= 115, xend=1934.5, yend=125, arrow=arrow(length = unit(0.25,"cm")), size=1, color="black", curvature = -0.2)
