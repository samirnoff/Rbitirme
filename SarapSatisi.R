library(ggplot2)
tarih <- c(1932,1933,1934,1935,1936,1937)
miktar <- c(52000,230000,200200,230000,715000,900000)
sarapsatisi <- data.frame(tarih,miktar)
ggplot(sarapsatisi, aes(tarih,miktar)) + geom_line(size=1.2) +
  labs(title = "Þarap satýþý",
       subtitle = "KÝLO") +
  theme_bw() +
  theme(plot.title = element_text(hjust = 0.5, size = 17, face = "italic")) +
  theme(axis.title = element_blank()) +
  theme(axis.text.x = element_text(size=15, face="bold")) +
  theme(axis.text.y = element_text(size=16, face="bold")) +
  scale_x_continuous(
    limits = c(1932,1937.5),
    breaks = c(1932,1933,1934,1935,1936,1937),
    labels = c("1932","3","4","5","6","7")
  ) +
  scale_y_continuous(
    limits = c(50000,1000000),
    breaks = c(100000,200000,300000,400000,500000,600000,700000,800000,900000,1000000),
    labels = c("100000","2          ","3          ","4          ","5          ","6          ","7          ","8          ","900000","1000000")
  )