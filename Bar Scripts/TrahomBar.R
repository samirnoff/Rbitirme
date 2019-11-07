Sys.setlocale(locale = "Turkish")
library(ggplot2)
yatak <- c(64,298,581,312,312,425,1257,1644,2073,2215,2215,2332,2579)
tedavi <- c(99,642,909,646,702,2694,2418,4287,4212,4318,3719,4034,4916)
zaman <- rep(seq(1925,1937),2)
deger <- c(yatak,tedavi)  
grup <- factor(c(rep(c("Yatırılarak tedavi sayısı", "Yapılan ameliyat       \" "), each=length(yatak))),
               levels=c("Yatırılarak tedavi sayısı", "Yapılan ameliyat       \" "))
data <- data.frame("x"=zaman, "y"=deger, "grp"=grup) 
text <- element_text(face = "bold", color = "black", size = 12)
xcor <- rep(c(seq(1925,1937)),2)
ycor <- deger + 90
labell <- c("64","298","581","312","312","425"," 1.257"," 1.644","  2.073","  2.215","  2.215","  2.332","  2.579",
            "       \u201399","642","909","646","702","  2.694","  2.418","","","","","","")
labell2 <- c("","","","","","","","","","","","","","","","","","","","","4.287","4.212","4.318","3.719","4.034","4.916")

ggplot(data=data,aes(x=zaman, y=deger, fill=grup, color=grup, alpha=grup)) +
  labs(title = "TRAHOM MÜCADELE TEŞKİLÂTI",
       subtitle = "Hastane ve Dispanserler Faaliyeti\n")+
  geom_bar(stat="identity",position ="identity",color="black", size=1.25, width=0.65) +
  theme_classic()+
  scale_fill_manual(values=c("black","white")) +
  scale_alpha_manual(values=c(1, 0))+
  theme(axis.line.y=element_blank(), axis.text.y = element_blank(), axis.text.x = element_blank(),
        axis.ticks = element_blank(), axis.title = element_blank(),
        axis.line.x = element_line(colour = "black", size = 1.2))+
  theme(title = text, plot.margin = margin(0.5, 0.5, 0.5, 0.5, "cm"))+
  theme(plot.title=element_text(vjust=-15, hjust=0.1,family="sans"),
        plot.subtitle=element_text(size= 15, vjust=-15, hjust=0.1,family="sans",face = "italic"))+
  theme(legend.title=element_blank(),legend.text = element_text(size=12,face = "bold.italic"),legend.position=c(0,0.82), 
        legend.justification=c(0,1), legend.direction='vertical',legend.spacing.x = unit(0.15,"cm"),
        legend.key = element_rect(size = 5, fill = "white", colour = "white")) +
  annotate("rect",xmin=1924.8,xmax=1925.2,ymin = 90,ymax=105,color="white",fill="white") +
  annotate("text", x = xcor, y = ycor, label = labell, 
           color = "black", angle = 90, hjust = 0.4, size=4, fontface = "bold.italic")+
  annotate("text", x = xcor, y = ycor, label = labell2, 
           color = "black", angle = 90, hjust = 1.8, size=4, fontface = "bold.italic")+
  scale_x_continuous(breaks=c(1925,1926,1927,1928,1929,1930,1931,1932,1933,1934,1935,1936,1937))+ 
  scale_y_continuous(expand = c(0,0))+
  annotate("text",x=1927.5,y=4650,label="1925 \u2013 1937",fontface="bold", size=5.5) +
  guides(fill=guide_legend(keywidth=0.78,keyheight=0.30,default.unit="inch"))
