library(ggplot2)
tarih <- c(1932,1933,1934,1935,1936,1937)
miktar <- c(52000,230000,200200,230000,715000,900000)
sarapsatisi <- data.frame(tarih,miktar)
ggplot(sarapsatisi, aes(tarih,miktar)) + geom_line(size=1.8) +
  labs(title = "Şarap satışı",
       subtitle = "KİLO") +
  theme_classic() +
  theme(panel.grid.major = element_line(colour = "black", size = 1)) +
  theme(plot.title = element_text(hjust = 0.5, size = 17, face = "bold.italic")) +
  theme(plot.subtitle = element_text(face = "bold.italic")) +
  theme(axis.title = element_blank()) +
  theme(axis.text.x = element_text(size=15, face="bold", vjust = 0.5)) +
  theme(axis.text.y = element_text(size=16, face="bold")) +
  theme(axis.line = element_line(size=3)) +
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
  )
