library(ggplot2)
zaman <- rep(seq(1926,1937),4)
arsenobenzol <- c(NA,17,17,14,32,32,56,10,24,36,25,31)
bizmut <- c(108,25,33,69,84,62,3,5,13,29,38,70)
civa <- c(93,115,72,61,80,41,154,172,173,201,177,202)
iyodur <- c(NA,NA,NA,NA,NA,NA,NA,NA,26,34,35,28)
deger <- c(arsenobenzol,bizmut,civa,iyodur)
grup <- factor(c(rep(c("Arsenobenzol","Bizmut müstahlebi","Civa","İyodür ve civa merhemi"), each = length(civa))),
               levels = c("Arsenobenzol","Bizmut müstahlebi","Civa","İyodür ve civa merhemi"))
varib <- c(26,34,35,28)
xnokta <- runif(144,1934.2,1934.35)
ynokta <- runif(144,0,varib)
ek1 <- c(0,1,2,3)
xcor1 <- seq(1926,1937) -0.3
xcor2 <- seq(1926,1937) - 0.1
xcor3 <- seq(1926,1937) + 0.09
xcor4 <- seq(1926,1937) + 0.27
ycor1 <- arsenobenzol
ycor2 <- bizmut
ycor3 <- civa
ycor4 <- iyodur
xlab <- runif(24,1928,1928.2)
ylab <- runif(24,169,174)
frengi <- data.frame(zaman,deger,grup,xnokta,ynokta)
annolabel1 <- c("","17","17","14","32","32","56","10","24","36","25","31")
annolabel2 <- c("108","25","33","69","84","62","3","5","13","29","38","70")
annolabel3 <- c("93","115","72","61","80","41","154","172","173","201","177","202")
annolabel4 <- c("","","","","","","","","26","34","35","28")
cizgi <- c(0.02,0.06,0.1,0.14)
ek <- seq(0,11)
xline <- c(1925.65) + ek
xlinend <- c(1926.35) + ek

ggplot(frengi, aes(x = zaman, y = deger, fill = grup, color = grup)) +
  geom_bar(stat = "identity", position = position_dodge(), color = "black", size = 1.25, width = 0.70) +
  scale_fill_manual(values=c("black","white","white","white"))  +
  geom_point(x=xnokta + ek1, y=ynokta + ek1, size=0.5,colour="black")+
  theme_classic() +
  theme(plot.margin = unit(c(2,1,1,1), "lines")) +  
  labs(caption = "Sayılar kiloyu göstermektedir") +
  theme(plot.caption = element_text(face = "bold.italic", vjust = -5, hjust = 0.1)) +
  theme(axis.line.y = element_blank(),
        axis.text.y = element_blank(), 
        axis.ticks = element_blank(), 
        axis.title = element_blank(),
        axis.text.x = element_text(color = "black", size = 12, hjust = 0.5, vjust = 0.5, face = "bold"),
        axis.line.x = element_blank()) +
  theme(legend.position= "none") +
  annotate("segment", x = xline, xend = xlinend, y = 0, yend = 0, size = 1.1) +
  annotate("text", x = 1931, y = 230, label = "Devlet Frengi Mücadele Teşkilatı tarafından tedavi için", size = 5) +
  annotate("text", x = 1931, y = 218, label = "Vilayetlere gönderilen ilaçlar", size = 6, fontface = "bold") +
  annotate("text", x = 1931, y = 208, label = "1926 \u2013 1937", size = 4.5) +
  annotate("text",x = xcor1, y = ycor1, label = annolabel1, angle = 90, fontface = "bold.italic",
           hjust = -0.2, size = 3) +
  annotate("text",x = xcor2, y = ycor2, label = annolabel2, angle = 90, fontface = "bold.italic",
           hjust = -0.5, size = 3) +
  annotate("text",x = xcor3, y = ycor3, label = annolabel3, angle = 90, fontface = "bold.italic",
           hjust = -0.2, size = 3) +
  annotate("text",x = xcor4, y = ycor4, label = annolabel4, angle = 90, fontface = "bold.italic",
           hjust = -0.2, size = 3) +
  annotate("segment", x = 1926 + cizgi, xend = 1926 + cizgi, y = 0, yend = 93, size = 1) +
  annotate("segment", x = 1927 + cizgi, xend = 1927 + cizgi, y = 0, yend = 115, size = 1) +
  annotate("segment", x = 1928 + cizgi, xend = 1928 + cizgi, y = 0, yend = 72, size = 1) +
  annotate("segment", x = 1929 + cizgi, xend = 1929 + cizgi, y = 0, yend = 61, size = 1) +
  annotate("segment", x = 1930 + cizgi, xend = 1930 + cizgi, y = 0, yend = 80, size = 1) +
  annotate("segment", x = 1931 + cizgi, xend = 1931 + cizgi, y = 0, yend = 41, size = 1) +
  annotate("segment", x = 1932 + cizgi, xend = 1932 + cizgi, y = 0, yend = 154, size = 1) +
  annotate("segment", x = 1933 + cizgi, xend = 1933 + cizgi, y = 0, yend = 172, size = 1) +
  annotate("segment", x = 1934 + cizgi, xend = 1934 + cizgi, y = 0, yend = 173, size = 1) +
  annotate("segment", x = 1935 + cizgi, xend = 1935 + cizgi, y = 0, yend = 201, size = 1) +
  annotate("segment", x = 1936 + cizgi, xend = 1936 + cizgi, y = 0, yend = 177, size = 1) +
  annotate("segment", x = 1937 + cizgi, xend = 1937 + cizgi, y = 0, yend = 202, size = 1) +
  coord_cartesian(clip = 'off') +
  scale_y_continuous(expand = c(0,0)) +
  scale_x_continuous(breaks = seq(1926,1937), expand = c(0,0.1)) +
  annotate("rect", xmin = 1928 , xmax = 1928.2 , ymin = 190, ymax = 195, colour = "black", fill= "black", size = 1) +
  annotate("rect", xmin = 1928 , xmax = 1928.2 , ymin = 183, ymax = 188, colour = "black", fill= "white", size = 1) +
  annotate("rect", xmin = 1928 , xmax = 1928.2 , ymin = 176, ymax = 181, colour = "black", fill= "white", size = 1) +
  annotate("rect", xmin = 1928 , xmax = 1928.2 , ymin = 169, ymax = 174, colour = "black", fill= "white", size = 1) +
  annotate(geom="text", x=1928.8 ,y=192.5 ,label="Arsenobenzol", size= 3.2, fontface="italic") +
  annotate(geom="text", x=1928.95 ,y=185.5 ,label="Bizmut müstahlebi", size= 3.2, fontface="italic") +
  annotate(geom="text", x=1928.5 ,y=178.5 ,label="Civa", size= 3.2, fontface="italic") +
  annotate(geom="text", x=1929.1 ,y=171.5 ,label="İyodür ve civa merhemi", size= 3.2, fontface="italic") +
  annotate("segment", x = 1928.005 + cizgi, xend = 1928.005 + cizgi, y = 176, yend = 181, size = 1) +
  annotate("point", x=xlab, y=ylab, size=0.5, colour= "black")
