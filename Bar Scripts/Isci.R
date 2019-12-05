library(ggplot2)
iller <- rep(c(1.5:28.5),2)
isci <- c(1500,1500,1700,2000,1900,2050,3750,4000,4200,4400,4400,4900,4900,5000,
          5200,5200,5300,5300,5250,5250,7000,7200,9000,16000,17500,52500,58000,16000)
isyeri <- c(1250,1000,1700,1250,1250,1700,1250,2200,2300,4500,1900,2000,7000,6000,
            2200,3800,2300,7000,4500,4700,2200,3800,1000,1300,2000,26000,34000,21000)
is <- data.frame(iller, isci, isyeri)

label1 <- c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20",
            "21","22","23","24","25"," "," ","28" )
xcor <- seq(1.1,28.1)

cizgi1 <- seq(0,1500,400)
cizgi2 <- seq(0,1500,400)
cizgi3 <- seq(0,1700,400)
cizgi4 <- seq(0,2000,400)
cizgi5 <- seq(0,1900,400)
cizgi6 <- seq(0,2050,400)
cizgi7 <- seq(0,3750,400)
cizgi8 <- seq(0,4000,400)
cizgi9 <- seq(0,4200,400)
cizgi10 <- seq(0,4400,400)
cizgi11 <- seq(0,4400,400)
cizgi12 <- seq(0,4900,400)
cizgi13 <- seq(0,4900,400)
cizgi14 <- seq(0,5000,400)
cizgi15 <- seq(0,5200,400)
cizgi16 <- seq(0,5200,400)
cizgi17 <- seq(0,5300,400)
cizgi18 <- seq(0,5300,400)
cizgi19 <- seq(0,5250,400)
cizgi20 <- seq(0,5250,400)
cizgi21 <- seq(0,7000,400)
cizgi22 <- seq(0,7200,400)
cizgi23 <- seq(0,9000,400)
cizgi24 <- seq(0,16000,400)
cizgi25 <- seq(0,17500,400)
cizgi26 <- seq(0,52500,400)
cizgi27 <- seq(0,58000,400)
cizgi28 <- seq(0,16000,400)

ggplot(is, aes(x=iller))+
  geom_bar(aes(y = isci), position = "identity",
           stat = "identity", colour = "black", fill = "white", size = 0.7, width = 1) +
  geom_bar(aes(y = -isyeri), position = "identity",
           stat = "identity", colour = "black", fill = "black", size = 0.7, width = 1) +
  theme_classic() +
  theme(panel.grid.major = element_line(colour = "black", size = 0.5)) +
  theme(plot.margin = unit(c(1,1,1,-2), "lines")) +
  theme(axis.line.y = element_blank(), axis.line.x = element_blank(),
        axis.text.x = element_blank(), 
        axis.text.y = element_text(color = "black", size = 8, hjust = 2.35, vjust = -0.5, face = "bold"), 
        axis.ticks.y = element_blank(), axis.ticks.x = element_blank(), axis.title = element_blank()) +
  scale_x_continuous(breaks = c(-6,-4,-2,0,2,4,6,8,10,12,14,16,18,20,22,24,26,28,30,32,34,36,38,40),
                     limits = c(-6,40), expand = c(0,0)) +
  scale_y_continuous(breaks = c(-35000,-30000,-25000,-20000,-15000,-10000,-5000,0,
                                5000,10000,15000,20000,25000,30000,35000,40000,45000,50000,55000,60000,65000),
                     labels = c(" ","","","","","","",
                                "0       ","  5 000","10 000","15 000","20 000","25 000","30 000","35 000",
                                "40 000","45 000","50 000","55 000","60 000"," "),
                     limits = c(-35000,65000), expand = c(0,0)) +
  annotate("text", x = 33.3, y = 37500, label = " 1 Antalya \n 2 Alazığ \n 3 Tekirdağ \n 4 Tokat \n 5 Afyon \n 6 Kırklareli",
           size = 3, fontface = "bold", hjust = 0) + 
  annotate("text", x = 33.3, y = 22500, label = " 7 Erzurum \n 8 Mugla \n 9 Kütahya \n10 Manisa \n11 Kayseri \n12 Kocaeli",
           size = 3, fontface = "bold", hjust = 0) +
  annotate("text", x = 33.3, y = 8500, label = "13 Gaziantep \n14 Balıkesir \n15 Mersin \n16 Aydın \n17 Eskişehir", 
           size = 3, fontface = "bold", hjust = 0) +
  annotate("text", x = 33.3, y = -5250, label = "18 Ankara \n19 Samsun \n20 Bursa \n21 Malatya \n22 Seyhan \n23 Erzincan", 
           size = 3, fontface = "bold", hjust = 0) +
  annotate("text", x = 33.3, y = -19000, label = "24 Sivas \n25 Zonguldak \n26 İzmir \n27 İstanbul \n28 Diğer vilayetler",
           size = 3, fontface = "bold", hjust = 0) +
  annotate("text", x = -2.9, y = -13900, label = "100\n200\n300\n400\n500\n600\n700\n800\n900\n1000\n1100",
           size = 3, fontface = "bold", hjust = 1) +
  annotate("text", x = 6, y = 42500, label = expression(bold(paste(underline("31 . 19 .937 de")))),
           size = 7, fontface = "bold")  +
  annotate("text", x = 4, y = 37000, label = "İşçi", size = 7, fontface = "bold") +
  annotate("text", x = 6, y = 32000, label = "265,341    ", size = 7, fontface = "bold") +
  annotate("rect", xmin = 2, xmax = 8, ymin = 34500 , ymax = 34800 , size = 0.5, colour = "black", fill = "black") +
  annotate("rect", xmin = 0.5, xmax = 11.5, ymin = 40000 , ymax = 40300 , size = 0.5, colour = "black", fill = "black") +
  annotate("text", x = 7 , y = 36000, label = "sayısı", size = 3, fontface = "bold") +
  annotate("text", x = 4.5, y = -13000, label = "İşyer", size = 7, fontface = "bold") + 
  annotate("text", x = 8 , y = -14000, label = "sayısı", size = 3, fontface = "bold") +
  annotate("text", x = 5, y = -18000, label = "6252   ", size = 7, fontface = "bold") +
  annotate("rect", xmin = 2.5, xmax = 9, ymin = -15200 , ymax = -15500 , size = 0.5, colour = "black", fill = "black") +
  annotate("text", x = xcor, y = 21000, label = label1, fontface = "bold",hjust = -0.2, size = 3) +
  annotate("text", x = 26, y = 55000, label = "26", fontface = "bold",hjust = -0.2,vjust = -0.5, size = 3) +
  annotate("text", x = 27, y = 59000, label = "27", fontface = "bold",hjust = -0.2, size = 3) +
  annotate("segment", x = 1, xend = 2, y = cizgi1, yend = cizgi1, size = 0.5) +
  annotate("segment", x = 2, xend = 3, y = cizgi2, yend = cizgi2, size = 0.5) +
  annotate("segment", x = 3, xend = 4, y = cizgi3, yend = cizgi3, size = 0.5) +
  annotate("segment", x = 4, xend = 5, y = cizgi4, yend = cizgi4, size = 0.5) +
  annotate("segment", x = 5, xend = 6, y = cizgi5, yend = cizgi5, size = 0.5) +
  annotate("segment", x = 6, xend = 7, y = cizgi6, yend = cizgi6, size = 0.5) +
  annotate("segment", x = 7, xend = 8, y = cizgi7, yend = cizgi7, size = 0.5) +
  annotate("segment", x = 8, xend = 9, y = cizgi8, yend = cizgi8, size = 0.5) +
  annotate("segment", x = 9, xend = 10, y = cizgi9, yend = cizgi9, size = 0.5) +
  annotate("segment", x = 10, xend = 11, y = cizgi10, yend = cizgi10, size = 0.5) +
  annotate("segment", x = 11, xend = 12, y = cizgi11, yend = cizgi11, size = 0.5) +
  annotate("segment", x = 12, xend = 13, y = cizgi12, yend = cizgi12, size = 0.5) +
  annotate("segment", x = 13, xend = 14, y = cizgi13, yend = cizgi13, size = 0.5) +
  annotate("segment", x = 14, xend = 15, y = cizgi14, yend = cizgi14, size = 0.5) +
  annotate("segment", x = 15, xend = 16, y = cizgi15, yend = cizgi15, size = 0.5) +
  annotate("segment", x = 16, xend = 17, y = cizgi16, yend = cizgi16, size = 0.5) +
  annotate("segment", x = 17, xend = 18, y = cizgi17, yend = cizgi17, size = 0.5) +
  annotate("segment", x = 18, xend = 19, y = cizgi18, yend = cizgi18, size = 0.5) +
  annotate("segment", x = 19, xend = 20, y = cizgi19, yend = cizgi19, size = 0.5) +
  annotate("segment", x = 20, xend = 21, y = cizgi20, yend = cizgi20, size = 0.5) +
  annotate("segment", x = 21, xend = 22, y = cizgi21, yend = cizgi21, size = 0.5) +
  annotate("segment", x = 22, xend = 23, y = cizgi22, yend = cizgi22, size = 0.5) +
  annotate("segment", x = 23, xend = 24, y = cizgi23, yend = cizgi23, size = 0.5) +
  annotate("segment", x = 24, xend = 25, y = cizgi24, yend = cizgi24, size = 0.5) +
  annotate("segment", x = 25, xend = 26, y = cizgi25, yend = cizgi25, size = 0.5) +
  annotate("segment", x = 26, xend = 27, y = cizgi26, yend = cizgi26, size = 0.5) +
  annotate("segment", x = 27, xend = 28, y = cizgi27, yend = cizgi27, size = 0.5) +
  annotate("segment", x = 28, xend = 29, y = cizgi28, yend = cizgi28, size = 0.5) 
