library(ggplot2)
tarih <- c(1923,1924,1925,1926,1927,1928,1929,1930,1931,1932,1933,1934,1935,1936,1937)
miktar <- c(0,4,7,4,18,10,15,25,22,50,70,115,145,160,190)
KromCevheri <- data.frame(tarih,miktar)
ggplot(KromCevheri, aes(tarih,miktar)) + geom_line(size=3.5) + 
  labs(caption=
         "Üç sýfýr \nilavesile") +
  theme_classic() +
  theme(panel.grid.major = element_line(colour = "black", size = 1)) +
  theme(axis.title = element_blank()) +
  theme(axis.text.x = element_text(angle = 90, face = "bold", size = 15, vjust = 0.5, colour = "black")) +
  theme(axis.text.y = element_text(face="bold", size=14, colour = "black")) +
  theme(axis.line.x = element_line(size = 2)) +
  theme(axis.line.y = element_line(size = 1.5)) +
  theme(plot.caption = element_text(hjust=0, face="bold.italic", size=13)) +
  theme(plot.margin = unit(c(2,1,1,1), "lines")) +
  scale_x_continuous(
    limits = c(1922,1937),
    breaks = c(1923,1924,1925,1926,1927,1928,1929,1930,1931,1932,1933,1934,1935,1936,1937),
    label = c("1923","   24","   25","   26","   27","   28","   29",
              "1930","   31","   32","   33","   34","   35","   36","1937"),
    expand = c(0,0)
  ) +
  scale_y_continuous(
    limits = c(0,220),
    breaks = c(0,20,40,60,80,100,120,140,160,180,200,220),
    label = c("0","20","40","60","80","100","120","140","160","180","200","TON"),
    expand = c(0,0)
  ) +
  annotate(geom="rect", xmin = 1924.05, xmax = 1934.95, ymin = 180.3, ymax = 199.8, fill = "white" ) +
  annotate(geom="text", x=1929.5,y=190,label="KROM CEVHERÝ ÝSTÝHSÂLÝMÝZ", size= 9.3, fontface="italic")
