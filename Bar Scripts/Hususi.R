Sys.setlocale(locale = "Turkish")
library(ggplot2)
yatak <- c(17700,22661,24851,37117,54065,50562,54318,57570,62301,63468,70025,74033)
tedavi <- c(NA,45333,50286,116765,164381,218366,264382,299398,351547,374318,308366,357450)
zaman <- rep(seq(1926,1937),2)
deger <- c(yatak,tedavi)  
grup <- factor(c(rep(c("Yatakda tedavi sayısı", "Ayakta          \"       \" "), each=length(yatak))),
               levels=c("Yatakda tedavi sayısı", "Ayakta          \"       \" "))
data <- data.frame("x"=zaman, "y"=deger, "grp"=grup) 
text <- element_text(color = "black", size = 14)
xcor <- rep(seq(1926,1937),2)
ycor <- deger + 100
labell <- c("17.700","","","37.117","54.065","50.562","54.318","57.570","62.301","63.468","70.025","74.033",
            "16.009","45.333","50.286","116.765","164.381","218.366","264.382","299.398","351.547","374.318","308.366","357.450")
labell2 <- c("","22.661","24.851","","","","","","","","","","","","","","","","","","","","","")

ggplot(data=data,aes(x=zaman, y=deger, fill=grup, color=grup, alpha=grup)) +
  labs(title = "HUSUSİ İDARELERE AİT HASTANELER MESAİSİ
  
       ",
       subtitle = "1926 \u2013 1937\n")+
  geom_bar(stat="identity",position =position_dodge(width = 0.3),color="black", size=1.35, width=1.5) +
  theme_classic()+
  scale_fill_manual(values=c("black","white")) +
  scale_alpha_manual(values=c(1, 0))+
  theme(axis.line.y=element_blank(), axis.text.y = element_blank(),
        axis.ticks = element_blank(), axis.title = element_blank(),
        axis.line.x = element_line(colour = "black", size = 1.2))+
  theme(title = text,axis.text.x = text, plot.margin = margin(0.5, 0.5, 0.5, 0.5, "cm"))+
  theme(plot.title=element_text(family="sans", hjust = 0.4),
        plot.subtitle=element_text(size= 16, family="sans",hjust = 0.45, vjust = 14))+
  theme(legend.title=element_blank(),legend.text = element_text(size=12,face = "bold.italic"),legend.position=c(0,1), 
        legend.justification=c(0,1), legend.direction='vertical',legend.spacing.x = unit(0.15,"cm"),
        legend.key = element_rect(size = 5, fill = "white", colour = "white")) +
  coord_cartesian(clip = 'off') +
  theme(plot.margin = unit(c(1,1,1,1), "lines"))+
  annotate("text", x = xcor, y = ycor, label = labell, 
           color = "black", angle = 90, hjust = -0.1, size=4, fontface = "bold.italic")+
  annotate("text", x = xcor, y = ycor, label = labell2, 
           color = "black", angle = 0, hjust = 0.4, vjust= -0.5 , size=3.5, fontface = "bold.italic")+ 
  annotate("text", x = 1926, y = 16009, label = "16.009", 
           angle = 90, vjust = -2.5, hjust = 0,size = 4 ,fontface = "bold.italic") +
  annotate("rect", xmin = 1925.5, xmax = 1926.2, ymin = 0, ymax = 14000, color = "black", fill = "white", size = 1.35) +
  scale_x_continuous(breaks=c(1926,1927,1928,1929,1930,1931,1932,1933,1934,1935,1936,1937))+ 
  scale_y_continuous(expand = c(0,0))+
  guides(fill=guide_legend(keywidth=0.78,keyheight=0.30,default.unit="inch"))
