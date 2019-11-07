library(ggplot2)
zaman <- rep(seq(1925,1937),2)
muayene <- c(16579,148264,212568,243296,354455,370073,530595,557081,547332,570575,594530,654668,734041)
musbet <- c(1434,14791,10190,9928,36186,45653,61241,72500,50609,48744,40842,62466,69850)
deger <- c(muayene,musbet)
grup <- factor(c(rep(c("Kan muayenesi sayısı","Müsbet kan           \" "), each = length(muayene))),
               levels = c("Kan muayenesi sayısı","Müsbet kan           \" "))
sitma <- data.frame(zaman,deger, grup)

xcor1 <- seq(1925,1937) - 0.2
xcor2 <- seq(1925,1937) + 0.2
xcor3 <- seq(1929,1937) - 0.2
ycor1 <- muayene
ycor2 <- musbet
ycor3 <- c(354455,370073,530595,557081,547332,570575,594530,654668,734041)
annolabel1 <- c("16.579","148.264","212 568","243.296","","","","","","","","","")
annolabel2 <- c("1.434","14.791","10.190","9.928","36.186","45.653","61.241","72.500","50.609","48.744","40.842","62.466","60.850")
annolabel3 <- c("354.455","370.073","530.595","557.081","547.332","570.575","594.530","654.668","734.041")

ggplot(sitma, aes(x = zaman, y = deger, fill = grup, color = grup)) +
  geom_bar(stat = "identity", position = position_dodge(), color = "black", size = 1.25, width = 0.70) +
  scale_fill_manual(values=c("white","black")) +
  theme_classic() +
  theme(plot.margin = unit(c(2,1,2,1), "lines")) +  
    theme(axis.line.y = element_blank(),
        axis.text.y = element_blank(), 
        axis.ticks = element_blank(), 
        axis.title = element_blank(),
        axis.text.x = element_text(color = "black", size = 22, hjust = 0.7, vjust = 0.5, face = "bold", angle = 89.99),
        axis.line.x = element_line(colour = "black", size = 1.2)) +
  theme(legend.title=element_blank(),
        legend.text = element_text(size=14,face = "bold.italic"),
        legend.position=c(0,0.85), 
        legend.justification=c(0,1), 
        legend.direction='vertical',
        legend.spacing.x = unit(0.15,"cm"),
        legend.box.spacing = unit(1,"cm"),
        legend.key = element_rect(fill = "white", colour = "white")) +
  guides(fill = guide_legend(keywidth = 0.6, keyheight=0.2, default.unit = "inch")) +
  annotate("text", x = 1928, y = 734040, label = "SITMA MÜCADELESİ", size = 6) +
  annotate("text", x = 1928, y = 700000, label = "Laboratuvar mesaisi", size = 7, fontface = "italic") +
  annotate("text", x = 1928, y = 665000, label = "1925 \u2013 1937", size = 7.5, fontface = "bold") +
  annotate("text",x = xcor1, y = ycor1, label = annolabel1, angle = 90, fontface = "bold.italic",
           hjust = -0.1) +
  annotate("text",x = xcor2, y = ycor2, label = annolabel2, angle = 90, fontface = "bold.italic",
           hjust = -0.1) +
  annotate("text",x = xcor3, y = ycor3, label = annolabel3, angle = 90, fontface = "bold.italic",
           hjust = 1.3) +
  coord_cartesian(clip = 'off') +
  scale_y_continuous(expand = c(0,0)) +
  scale_x_continuous(breaks = seq(1925,1937), expand = c(0,0.1))
