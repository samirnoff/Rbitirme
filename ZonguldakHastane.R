Sys.setlocale(locale = "Turkish")
library(ggplot2)
yatak <- c(598,701,523,376,568,687,774,777,815,1031,1223,1374,1528,1733)
tedavi <- c(NA,67,69,173,272,291,183,161,725,1531,3203,2443,3661,4432)
zaman <- rep(seq(1924,1937),2)
deger <- c(yatak,tedavi)  
grup <- factor(c(rep(c("Yatýrýlarak tedavi sayýsý", "Ayakta         \"           \" "), each=length(yatak))),
               levels=c("Yatýrýlarak tedavi sayýsý", "Ayakta         \"           \" "))
data <- data.frame("x"=zaman, "y"=deger, "grp"=grup) 
text <- element_text(color = "black", size = 12)
xcor <- rep(paste(c(seq(1924,1937)),sep=""),2)
ycor <- deger + 100
labell <- c("598","701","523","376","568","687","774","777","815","1.031","1.223","1.374","1.528","1.733",
            "","","","","","","","",""," 1.531"," 3.203"," 2.443"," 3.661"," 4.432")
labell2 <- c("","","","","","","","","","","","","","",
             "","67","69","173","272","291","183","161","725","","","","","")

ggplot(data=data,aes(x=factor(zaman), y=deger, fill=grup, color=grup, alpha=grup)) +
  ggtitle("ZONGULDAK HASTANESÝNÝN FAALÝYETÝ \n                    1924 \u2013 1937")+
  geom_bar(stat="identity",position ="identity",color="black", size=1.25, width=0.65) +
  theme_classic()+
  scale_fill_manual(values=c("black","white")) +
  scale_alpha_manual(values=c(1, 1))+
  theme(axis.line.y=element_blank(), axis.text.y = element_blank(), 
        axis.ticks = element_blank(), axis.title = element_blank(),
        axis.line.x = element_line(colour = "black", size = 1.2))+
  theme(title = bold.text,axis.text.x = bold.text, plot.margin = margin(0.5, 0.5, 0.5, 0.5, "cm"))+
  theme(plot.title=element_text(vjust=-10, hjust=0.2,family="sans"))+
  theme(legend.title=element_blank(),legend.text = element_text(size=12,face = "bold.italic"),legend.position=c(0,0.90), 
        legend.justification=c(0,1), legend.direction='vertical',legend.spacing.x = unit(0.15,"cm"),
        legend.key = element_rect(size = 5, fill = "white", colour = "white")) +
  annotate("text", x = xcor, y = ycor, label = labell, 
           color = "black", angle = 90, hjust = 0.4, size=4, fontface = "bold.italic")+
  annotate("text", x = xcor, y = ycor, label = labell2, 
           color = "white", angle = 0, vjust = 1.15, size=4, fontface = "bold.italic")+
  scale_x_discrete(breaks=c(1924,1925,1926,1927,1928,1929,1930,1931,1932,1933,1934,1935,1936,1937))+ 
  scale_y_continuous(expand = c(0,0))+
  guides(fill=guide_legend(keywidth=0.78,keyheight=0.30,default.unit="inch")) +
  coord_cartesian(clip = 'off')

## An alternative solution

  Sys.setlocale(locale = "Turkish")
  library(ggplot2)
  yatak <- c(598,701,523,376,568,687,774,777,815,1031,1223,1374,1528,1733)
  tedavi <- c(NA,67,69,173,272,291,183,161,690,1531,3203,2443,3661,4432)
  ##To fit "725" into box I assigned value of 690 to it. Its label is still 725.
  fark <- ifelse(yatak<tedavi,yatak,0)
  zaman <- seq(1924,1937)
  data <- data.frame("x"=zaman, "y1"=yatak, "y2"=tedavi, "y3"=fark)


  xcor <- rep(paste(c(seq(1924,1937)),sep=""),1)
  ycor1 <- yatak + 100
  ycor2 <- tedavi + 120

  labell <- c("598","701","523","376","568","687","774","777","815","1.031","1.223","1.374","1.528","1.733")
           
  labell2 <- c("","67","69","173","272","291","183","161","725","","","","","")

  labell3 <- c("","","","","","","","","","1.531","3.203","2.443","3.661","4.432")

  ggplot(data=data2,aes(x=factor(zaman))) +
  ggtitle("ZONGULDAK HASTANESİNİN FAALİYETİ \n                    1924 \u2013 1937")+
  geom_bar(aes(y=y1,fill="black"),stat= "identity", col = "black", size=1)+
  geom_bar(aes(y=y2,fill="white"),stat= "identity", col = "black", size=1)+
  geom_bar(aes(y=y3),stat= "identity", col = "black", fill="black", size=1)+
    theme_classic()+
  scale_fill_manual(name = "",
                    values=c("black", "white"),
                    labels=c("Yatırılarak tedavi sayısı","Ayakta         \"           \" "))+
    theme(axis.line.y=element_blank(), axis.text.y = element_blank(), 
          axis.ticks = element_blank(), axis.title = element_blank(),
          axis.line.x = element_line(colour = "black", size = 0.9),
          axis.text.x= element_text(size=13,color = "black"))+
    theme(title =element_text(face = "bold", color = "black", size = 12), plot.margin = margin(0.5, 0.5, 0.5, 0.5, "cm"))+
    theme(plot.title=element_text(vjust=-10, hjust=0.2,family="sans"))+
    theme(legend.title=element_blank(),legend.text = element_text(size=12,face = "bold.italic"),legend.position=c(0,0.90), 
          legend.justification=c(0,1), legend.direction='vertical',legend.spacing.x = unit(0.15,"cm"),
          legend.key = element_rect(size = 5, fill = "white", colour = "white"))+
      guides(fill=guide_legend(override.aes = list(size = 1.2), keywidth=0.78, keyheight=0.30,default.unit="inch")) +
    scale_x_discrete(breaks=c(1924,1925,1926,1927,1928,1929,1930,1931,1932,1933,1934,1935,1936,1937))+ 
    scale_y_continuous(expand = c(0,0))+
    annotate("text", x = xcor, y = ycor1, label = labell, 
             color = "black", angle = 90, hjust = 0.2, size=3.0, fontface = "bold.italic")+
    annotate("text", x = xcor, y = ycor2, label = labell2, 
            color = "white", angle = 0, vjust = 0.758, size=3, fontface = "bold.italic")+
    annotate("text", x = xcor, y = ycor2, label = labell3, 
             color = "black", angle = 90, hjust = 0.2, size=3.0, fontface = "bold.italic")+
    coord_cartesian(clip = 'off')
