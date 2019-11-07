library(ggplot2)
zaman <- rep(seq(1924,1937),2)
yatak <- c(1594,1818,1593,1439,1459,1821,1845,2029,2305,1257,3075,3142,3415,3239)
ayak <- c(NA,12913,14091,13738,14790,22984,19736,18145,20220,23101,22744,18706,22978,37103)
deger <- c(ayak,yatak)
grup <- factor(c(rep(c("Ayakta tedavi","Yatırılarak tedavi"), each=length(yatak))),
               levels=c("Yatırılarak tedavi","Ayakta tedavi"))
cocuk <- data.frame(zaman,deger, grup)

xcor <- zaman
ycor <- deger
annolabel <- c("","12.913","14.091","13.738","14.790","22.984","19.736","18.145","20.220","23.101","22.744","18.706","22.978","37.103",
                "1.594","1.818","1.593","1.439","1.459","1.821","1.845","2.029","2.305","1.257","3.075","3.142","3.415","3.239")

ggplot(cocuk, aes(x = zaman, y = deger, fill = grup, color = grup)) +
  geom_bar(stat = "identity", position = "identity", color = "black", size = 1.25, width = 0.70) +
  scale_fill_manual(values=c("black","white")) +
  theme_classic() +
  labs(title = "İSTANBUL ÇOCUK HASTANESİNİN MESAİSİ",
       subtitle = "1924 \u2013 1937\n\n\n\n\n\n") +
  theme(plot.title = element_text(hjust = 0.5),
        plot.subtitle = element_text(hjust = 0.5, size = 13.5)) +
  theme(plot.margin = unit(c(2,1,1,1), "lines")) +  
  theme(axis.line.y = element_blank(),
        axis.text.y = element_blank(), 
        axis.ticks = element_blank(), 
        axis.title = element_blank(),
        axis.text = element_text(color = "black", size = 12, hjust = 0.57),
        axis.line.x = element_line(colour = "black", size = 1.2)) +
  theme(legend.title=element_blank(),
        legend.text = element_text(size=13,face = "bold.italic"),
        legend.position=c(0.15,1.25), 
        legend.justification=c(0,1), 
        legend.direction='vertical',
        legend.spacing.x = unit(0.15,"cm"),
        legend.key = element_rect(size = 3 ,fill = "white", colour = "white")) +
  guides(fill = guide_legend(keywidth = 0.6, keyheight=0.2, default.unit = "inch")) +
  annotate("text",x = xcor, y = ycor, label = annolabel, angle = 90, fontface = "italic",
           hjust = -0.1) +
  coord_cartesian(clip = 'off') +
  scale_y_continuous(expand = c(0,0)) +
  scale_x_continuous(breaks = seq(1924,1937))
