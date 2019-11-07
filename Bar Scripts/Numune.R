library(ggplot2)
zaman <- rep(seq(1924,1937),2)
yatak <- c(3278,4791,4235,4537,4997,5466,5994,6004,5756,7151,10415,12018,16382,18014)
ayak <- c(NA,10651,15496,16050,22727,30712,36358,48448,56652,66822,100985,116123,193488,232407)
deger <- c(yatak,ayak)
grup <- factor(c(rep(c("Yatırılarak tedavi","Ayakta tedavi"), each = length(yatak))),
               levels = c("Yatırılarak tedavi","Ayakta tedavi"))

numune <- data.frame(zaman, deger, grup)

xcor1 <- seq(1924,1937) - 0.2
xcor2 <- seq(1924,1937) + 0.15
ycor1 <- yatak
ycor2 <- ayak
annolabel1 <- c("3.278","4.791","4.235","4.537","4.997","5.466","5.994","6.004","5.756","7.151","10 415","12.018","16.382","19.014")
annolabel2 <- c("","10.651","15.496","16.050","22.727","30.712","26.358","48 448","56.652","66.822","100.985","116.123","193.488","232.407")

ggplot(numune, aes(x = zaman, y = deger, fill = grup)) + 
  geom_bar(stat = "identity", position = position_dodge(), color = "black", size = 1.25, width = 0.70) +
  scale_fill_manual(values=c("black","white")) +
  theme_classic() +
  labs(title = "NÜMUNE HASTANELERİ MESAİSİ",
       subtitle = "1924 \u2013 1937\n\n") +
  #  theme(plot.margin = unit(c(2,1,2,1), "lines")) + 
  theme(plot.title = element_text(hjust = 0.4),
        plot.subtitle = element_text(hjust = 0.4, size = 14.5)) +
  theme(axis.line.y = element_blank(),
        axis.text.y = element_blank(), 
        axis.ticks = element_blank(), 
        axis.title = element_blank(),
        axis.text.x = element_text(color = "black", size = 12, vjust = 0.5),
        axis.line.x = element_line(colour = "black", size = 1.2)) +
  theme(legend.title=element_blank(),
        legend.text = element_text(size=14,face = "bold.italic"),
        legend.position=c(0.05,1), 
        legend.justification=c(0,1), 
        legend.direction='vertical',
        legend.spacing.x = unit(0.15,"cm"),
        legend.box.spacing = unit(1,"cm"),
        legend.key = element_rect(fill = "white", colour = "white")) +
  guides(fill = guide_legend(keywidth = 0.5, keyheight=0.2, default.unit = "inch")) +
  coord_cartesian(clip = 'off') +
  annotate("text",x = xcor1, y = ycor1, label = annolabel1, angle = 90,
           size = 3.7, hjust = -0.1, fontface = "bold.italic") +
  annotate("text",x = xcor2, y = ycor2, label = annolabel2, angle = 90,
           size = 3.7, hjust = -0.1, fontface = "bold.italic") +
  scale_y_continuous(expand = c(0,0)) +
  scale_x_continuous(breaks = seq(1924,1937), expand = c(0,0.1))
