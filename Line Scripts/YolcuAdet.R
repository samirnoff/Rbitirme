library(ggplot2)
tarih <- c(1923:1937)
yolcu <- c(250000,280000,320000,355000,350000,370000,370000,335000,305000,275000,300000,260000,435000,700000,800000)
hayvan <- c(125000,140000,190000,246000,260000,370000,335000,338000,345000,280000,275000,280000,340000,335000,350000)
yuk <- c(50000,60000,95000,125000,148000,125000,130000,128000,133000,122000,160000,200000,195000,300000,400000)

dataf <- data.frame(tarih,yolcu,hayvan,yuk) 

ggplot(dataf, aes( x = tarih )) +
  geom_line(aes(y = yolcu), size = 4) +
  geom_line(aes(y = hayvan + 5500), size = 1) + geom_line(aes(y = hayvan - 5500), size = 1) +
  geom_line(aes( y = yuk ), size = 4) + geom_line(aes( y = yuk - 12000), size = 1) +
  theme_classic() +
  coord_cartesian(clip = 'off') +
  theme(panel.grid.major = element_line(colour = "black", size = 1),
        plot.margin = unit(c(2,2,3,4), "lines"),
        axis.line = element_line(size = 1),
        axis.title = element_blank(),
        axis.text.x = element_text(size = 8.7, face = "bold", color = "black", angle = 90, vjust = 0.3),
        axis.text.y.right = element_text(size = 10, face = "bold", color = "black", hjust = 2, vjust = 0),
        axis.text.y.left = element_blank(),
        axis.ticks = element_blank()) +
  scale_x_continuous(breaks = c(1923:1938),
                     expand = c(0,0)) +
  scale_y_continuous(breaks = seq(0,800000,50000),
                     labels = c("0          ","50.000  ","100.000","150.000","200.000","250.000","300.000","350.000","400.000",
                                "450.000","500.000","550.000","600.000","650.000","700.000","750.000","800.000"),
                     limits = c(0,800000),
                     expand = c(0,0),
                     sec.axis = dup_axis()) +
  annotate("segment", x = 1935.05, xend = 1937, y = 183000, yend = 380000, size = 1.05) +
  geom_line(aes( y = hayvan ), color = "white", size = 1.55) +
  annotate("text", x = 1923, y = 259000, label = expression(bold(underline("Yolcu"))), size = 3.5, hjust = 1.4) +
  annotate("text", x = 1923, y = 245000, label = "Adet", hjust = 1.6, fontface = "bold", size = 3.5) +
  annotate("text", x = 1923, y = 135000, label = expression(bold(underline("Hayvan"))), hjust = 1.3, size = 3.2) +
  annotate("text", x = 1923, y = 120000, label = "Adet", hjust = 1.66, fontface = "bold", size = 3.5) +
  annotate("text", x = 1923, y = 51000, label = expression(bold(underline("Yük"))), hjust = 1.6, size = 3.6) +
  annotate("text", x = 1923, y = 40000, label = "Ton", hjust = 1.6, fontface = "bold", size = 3.6)
