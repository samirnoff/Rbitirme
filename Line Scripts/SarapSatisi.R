Sys.setlocale(locale = "Turkish")
library(ggplot2)
tarih <- c(1932,1933,1934,1935,1936,1937)
miktar <- c(52000,230000,200200,230000,715000,900000)
sarapsatisi <- data.frame(tarih,miktar)
ggplot(sarapsatisi, aes(tarih,miktar)) + geom_line(size=1.8) +
  labs(title = "Şarap satışı\n\n") +
  theme_classic() +
  theme(panel.grid.major = element_line(colour = "black", size = 1)) +
  theme(plot.title = element_text(hjust = 0.5, size = 17, face = "bold.italic")) +
  theme(plot.subtitle = element_text(face = "bold.italic")) +
  theme(axis.title = element_blank()) +
  theme(axis.text.x = element_text(size=15, face="bold", vjust = 0.5, colour = "black")) +
  theme(axis.text.y = element_text(size=16, face="bold", colour = "black")) +
  theme(axis.line = element_line(size=3)) +
  coord_cartesian(clip='off') +
  scale_x_continuous(
    limits = c(1932,1937.62),
    breaks = seq(1932,1938,by = 0.33),
    labels = c("1932","","","3","","","4","","","5","","","6","","","7","","",""),
    expand = c(0,0)
  ) +
  scale_y_continuous(
    limits = c(0,1000000),
    breaks = c(0,100000,200000,300000,400000,500000,600000,700000,800000,900000,1000000),
    labels = c("","100000","2          ","3          ","4          ","5          ","6          ",
               "7          ","8          ","900000","1000000"),
    expand = c(0,0)
  ) +
  annotate(geom="text",x=1932,y=1000000,label="KİLO",fontface="bold.italic", hjust=1.8,vjust=-1.1) +
  annotate(geom="text",x=1932,y=1000000,label="----------------",fontface="bold.italic", hjust=1.1,vjust=-0.5)
