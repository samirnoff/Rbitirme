library(ggplot2)
yil <- c(1923,1928,1933,1937,1938,1943)
deger1 <- c(40000,60000,72000,125000,140000,NA)
deger2 <- c(NA,NA,NA,NA,NA,250000)


elektrik <- data.frame(yil,deger1,deger2)

ggplot(elektrik) +
  geom_curve(aes(x = 1923, y = 40000, xend = 1933, yend = 80000), curvature = 0.04, size = 1.8) +
  geom_curve(aes(x = 1933, y = 80000, xend = 1937.7, yend = 135000), curvature = 0.1, size = 1.8) +
  geom_curve(aes(x = 1937.7, y = 135000, xend = 1943, yend = 250000), linetype = "dashed", curvature = 0.08, size = 1.8) +
  theme_classic() +
  labs(title = "CUMHURİYET DEVRİNDE\nELEKTRİK TAKATININ\nÇOĞALIŞINI GÖSTEREN GRAFİK\n") +
  coord_cartesian(clip = 'off') +
  theme(panel.grid.major = element_line(colour = "black", size = 1),
        plot.margin = unit(c(1,2,4,1), "lines"),
        plot.title = element_text(size = 22, face = "italic", hjust = 0.5),
        axis.line = element_line(size = 1),
        axis.title = element_blank(),
        axis.text.x = element_text(size = 15, face = "bold.italic", color = "black"),
        axis.text.y = element_text(size = 10.6, vjust = -0.1, hjust = 1.23, face = "bold.italic", color = "black"),
        axis.ticks = element_blank()) +
  scale_x_continuous(breaks = yil,
                     labels = c("","1928","1933","1937","","1943"),
                     limits = c(1923,1943),
                     expand = c(0,0)) +
  scale_y_continuous(breaks = seq(0,250000,50000),
                     labels = c("","50,000","100,000","150,000","200,000","250,000"),
                     limits = c(0,250000),
                     expand = c(0,0)) +
  annotate("text", x = 1923, y = 0, label = "0", vjust = 0, hjust = 2, size = 3.7, fontface = "bold.italic") +
  annotate("text", x = 1938, y = 0, label = "1938", vjust = 1.4,hjust = 0.1 , size = 5.6, fontface = "bold.italic") +
  annotate("text", x = 1923, y = 0, label = "1923", vjust = 1.4,hjust = 0.1 , size = 5.6, fontface = "bold.italic") +
  annotate("text", x = 1923.5, y = 144000, label = "K İ L O W A T .", angle = 90, size = 5.5, fontface = "italic") +
  annotate("text", x = 1929.18, y = 71000, label = "K U R U L M U Ş", angle = 13, size = 7, fontface = "italic") +
  annotate("text", x = 1939.7, y = 184500, label = "KURULACAK", angle = 42.5, size = 6, fontface = "italic") +
  annotate("text", x = 1933.2, y = 0, label = "Y   I   L     L   A   R", size = 8, fontface = "bold.italic", vjust = 1.8)
