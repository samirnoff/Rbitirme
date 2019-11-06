Sys.setlocale(locale = "Turkish")
library(ggplot2)
tarih <- c(1923,1924,1925,1926,1927,1928,1929,1930,1931,1932,1933,1934,1935,1936,1937)
miktar <- c(0,4,7,4,18,10,15,25,22,50,70,115,145,160,190)
KromCevheri <- data.frame(tarih,miktar)
ggplot(KromCevheri, aes(tarih,miktar)) + geom_line(size=3.5) + 
  theme_classic() +
  theme(panel.grid.major = element_line(colour = "black", size = 1)) +
  theme(axis.title = element_blank()) +
  theme(axis.text.x = element_text(angle = 90, face = "bold", size = 15, vjust = 0.5, colour = "black")) +
  theme(axis.text.y = element_text(face="bold", size=14, colour = "black", vjust = -0.05)) +
  theme(axis.line.x = element_line(size = 2)) +
  theme(axis.line.y = element_line(size = 1)) +
  theme(plot.margin = unit(c(2,1,1,2), "lines")) +
  coord_cartesian(clip = 'off') +
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
    label = c("0","20","40","60","80","100","120","140","160","180","200",""),
    expand = c(0,0)
  ) +
  annotate(geom="rect", xmin = 1924.05, xmax = 1934.95, ymin = 180.3, ymax = 199.8, fill = "white" ) +
  annotate(geom="text", x=1929.5,y=190,label="KROM CEVHERÝ ÝSTÝHSÂLÝMÝZ", size= 9.3, fontface="italic") +
  annotate(geom="text", x=1922, y=0, label="Üç sfýr\nilavesile",fontface="bold.italic", hjust=1, vjust=1.8) +
  annotate(geom="text", x=1922, y=220, label=expression(bold(underline("TON"))), hjust=1.15, vjust=0.2, size=5) +
  annotate(geom="segment",x=1922.13,xend=1922.13, y=0,yend=220,colour="black",size=1) +
  annotate(geom="rect", xmin = 1922, xmax = 1922.13, ymin = 20, ymax = 40, fill = "black") +
  annotate(geom="rect", xmin = 1922, xmax = 1922.13, ymin = 60, ymax = 80, fill = "black") +
  annotate(geom="rect", xmin = 1922, xmax = 1922.13, ymin = 100, ymax = 120, fill = "black") +
  annotate(geom="rect", xmin = 1922, xmax = 1922.13, ymin = 140, ymax = 160, fill = "black") +
  annotate(geom="rect", xmin = 1922, xmax = 1922.13, ymin = 180, ymax = 200, fill = "black")