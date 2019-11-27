library(ggplot2)
zaman <- rep(c(1930:1937),4)
serum1 <- c(12,150,191,185,245,276,486,644)
serum2 <- c(3,144,163,184,202,246,264,537)
asi1 <- c(154,698,1849,2066,2029,2592,2447,4233)
asi2 <- c(120,493,1831,1933,1951,2404,2326,3965)
sevkedilen <- c(asi2,serum2) + 350
istihsalat <- c(asi1,serum1) + 350
deger <- c(sevkedilen,istihsalat) 
grup1 <- rep(c("Asi","Serum"), each = 8)
grup2 <- rep(c("sevkedilen","istihsalat"), each = 16)

merkez <- data.frame(zaman, deger, grup1, grup2)
xcor <- rep(c(1930:1937),2)
label1 <- c("","698","1.849","2.066","2.029","2.592","2.447","4.233",
            "154 - 12","150","191","185","245","276","486","644")
label2 <- c("","493","1.831","1.933","1.951","2.404","2.326","3.965",
            "3 - 120","144","163","184","202","246","264","537")
ek <- seq(0,7)
ggplot(merkez, aes(x=zaman,fill = grup1))+
  geom_bar(data = subset(merkez, grup2 == "istihsalat"),aes(y = -deger), position = "identity",
           stat = "identity", colour = "black", size = 1.1, width = 0.8) +
  geom_bar(data = subset(merkez, grup2 == "sevkedilen"),aes(y = deger), position = "identity",
           stat = "identity", colour = "black", size = 1.1, width = 0.8) +
  scale_fill_manual(values=c("white","black")) +
  coord_flip(clip = 'off')+
  scale_x_reverse(expand = c(0,0.2))+
  theme_classic() +
  theme(plot.margin = unit(c(5,3,1,3), "lines")) +  
  labs(caption = "S     A     Y     I     S     I") +
  theme(plot.caption = element_text(size = 25, hjust = 0.5)) +
  theme(legend.position= "none") +
  theme(axis.line.y = element_blank(),
        axis.text.y = element_blank(), 
        axis.text.x = element_text(color = "black", size = 11, face = "bold", vjust = 1),
        axis.ticks.y = element_blank(),
        axis.title = element_blank(),
        axis.line.x = element_line(colour = "black", size = 1.2)) +
  annotate("text", x = 1927, y = 0, label = "T.C. \n MERKEZ HIFZISSIHHA MÜESSESESİ", size = 5, fontface = "bold") +
  annotate("text", x = 1927.7, y = 0, label = "Serum ve Aşı istihsal ve sevkiyyatı faaliyeti", size = 5, fontface = "italic") +
  annotate("text", x = 1928.2, y = 0, label = "1930 \u2013 1937", size = 5) +
  annotate("text", x = 1929.3, y = 0, label = "Yıllar", size = 5) +
  annotate("text", x = 1933.5, y = -4100, label = "İSTİHSALAT   (KİLO)", size = 6, angle = 45) +
  annotate("text", x = 1933.5, y = 4100, label = "SEVKEDİLEN   (KİLO)", size = 6, angle = -45) +
  annotate("text", x = 1929, y = -3850, label = "Serum", size = 4, fontface = "italic") +
  annotate("text", x = 1929, y = 4000, label = "Aşı", size = 4, fontface = "italic") +
  annotate("rect", xmin = 1928.9 , xmax = 1929.2 , ymin = 4200, ymax = 4600, size = 1, colour = "black", fill = "white") +
  annotate("rect", xmin = 1928.9 , xmax = 1929.2 , ymin = -4200, ymax = -4600, size = 1, colour = "black", fill = "black") +
  scale_y_continuous(breaks = c(-4850, -3350, -2350, -1350, -350, 350, 1350, 2350, 3350, 4350, 4850),
                     labels = c("4.500","3.000","2.000","1.000","0","0","1.000","2.000","3.000","","4.500"),
                     limits = c(-4850,4850), expand = c(0,0)) +
  annotate("rect", xmin = 1929.85 , xmax = 1930.2 , ymin = 400 , ymax = 630 , size = 1,  fill = "white") +
  annotate("rect", xmin = 1929.85 , xmax = 1930.2 , ymin = -400 , ymax = -630 , size = 1,  fill = "white") +
  annotate("text", x = xcor, y = -istihsalat , label = label1, size = 3.8, hjust = 1.1 , fontface = "bold.italic") +
  annotate("text", x = xcor, y = sevkedilen , label = label2, size = 3.8, hjust = -0.09, fontface = "bold.italic") +
  annotate("rect", ymin = -350, ymax = 350, xmin = 1929.7, xmax = 1937, fill = "grey") +
  annotate("rect", ymin = -350, ymax = 350, xmin = 1929.6 + ek, xmax = 1930.41 + ek, fill = "white", colour = "black", size = 1) +
  annotate("text", x = c(1930:1937), y = 0, label = paste(c(1930:1937)), size = 5.5, fontface = "bold") 
  
  
