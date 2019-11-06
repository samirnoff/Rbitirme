Sys.setlocale(locale = "Turkish")
library(ggplot2)
yatak <- c(12188,12746,12810,15625,14600,15757,17121,17213,18004,18193)
tedavi <- c(30774,30670,34689,57285,66959,84625,126324,145483,159853,177075)
zaman <- rep(seq(1928,1937),2)
deger <- c(yatak,tedavi) 
grup <- factor(c(rep(c("Yatakda tedavi sayýsý", "Ayakda       \"           \" "), each=length(yatak))),
               levels=c("Yatakda tedavi sayýsý", "Ayakda       \"           \" "))
data <- data.frame("x"=zaman, "y"=deger, "grp"=grup)
bold.text <- element_text(face = "bold", color = "black", size = 12)
xcor <- rep(paste(c(seq(1928,1937)),sep=""),2)
ycor <- deger + 100
labell <- c("12.188","12.746","12.810","15.625","14.600","15.757","17.121","17.213","18.004",
            "18.193","30.774","30.670","34.689","57.285","66.959","84.625","126.324","145.483","159.853","177.075")


ggplot(data=data,aes(x=factor(zaman), y=deger, fill=grup, color=grup, alpha=grup)) +
  ggtitle("BELEDiYELERE AiT HASTANELER MESAÝSÝ \n 1928\u20131937")+
  geom_bar(stat="identity",position ="identity",color="black", size=1.25, width=0.65) +
  theme_classic()+
  scale_fill_manual(values=c("black","white")) +
  scale_alpha_manual(values=c(1, 0))+
  theme(axis.line.y=element_blank(), axis.text.y = element_blank(), 
        axis.ticks = element_blank(), axis.title = element_blank(),
        axis.line.x = element_line(colour = "black", size = 1.2))+
  theme(title = bold.text,axis.text.x = bold.text, plot.margin = margin(0.5, 0.5, 0.5, 0.5, "cm"))+
  theme(plot.title=element_text(vjust=0.95, hjust=0.3,family="sans"))+
  theme(legend.title=element_blank(),legend.text = element_text(size=12,face = "bold.italic"),legend.position=c(0,0.90), 
        legend.justification=c(0,1), legend.direction='vertical',legend.spacing.x = unit(0.15,"cm"),
        legend.key = element_rect(size = 5, fill = "white", colour = "white")) +
  annotate("text", x = xcor, y = ycor, label = labell, 
           color = "black", angle = 90, hjust = -0.1, size=4, fontface = "bold.italic")+
  scale_x_discrete(breaks=c(1928,1929,1930,1931,1932,1933,1934,1935,1936,1937))+ 
  scale_y_continuous(expand = c(0,0))+
  guides(fill=guide_legend(keywidth=0.78,keyheight=0.30,default.unit="inch")) +
  coord_cartesian(clip = 'off')