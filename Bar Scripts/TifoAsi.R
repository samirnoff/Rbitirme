library(ggplot2)
zaman <- rep(seq(1927,1937),3)
birinci <- c(91431,94320,70005,71045,111012,114590,143650,190256,66022,29848,548961)
ikinci <- c(57443,55797,48810,38561,89604,82093,97657,133314,64938,28539,460192)
ucuncu <- c(NA,NA,NA,NA,NA,NA,NA,NA,19162,NA,69963)
deger <- c(birinci,ikinci,ucuncu)
grup <- factor(c(rep(c("Birinci     aşı","İkinci        \"","Üçüncü    \""), each = length(birinci))),
               levels = c("Birinci     aşı","İkinci        \"","Üçüncü    \""))

tifo <- data.frame(zaman, deger, grup)

xcor1 <- seq(1927,1937) - 0.3
xcor2 <- seq(1927,1937)
xcor3 <- seq(1927,1937) + 0.28
ycor1 <- birinci
ycor2 <- ikinci
ycor3 <- ucuncu
annolabel1 <- c("91.431","94 320","70.005","71.045","111.012","114.590","143.650","190.256","66.022","29.848","548 961")
annolabel2 <- c("57.442","55.797","48.810","38.561","89.604","82.093","97.657","133.314","64.938","28.539","460.192")
annolabel3 <- c("","","","","","","","","19.162","","69963")

cizgi <- seq(0,0.14,0.07)

ek <- seq(0,10)
xline <- c(1926.6) + ek
xlinend <- c(1927.4) + ek

ggplot(tifo, aes(x = zaman, y = deger, fill = grup)) +
  geom_bar(stat = "identity", position = position_dodge(), color = "black", size = 1.05, width = 0.8) +
  scale_fill_manual(values=c("black","white",alpha("black",0.1))) +
  labs(caption = "Sayılar aşı tatbik edilen şahısların miktarını gösterir.") +
  theme_classic() +
  theme(plot.caption = element_text(face = "bold.italic",size = 10 , hjust = 0)) +
  annotate("segment", x = xline, xend = xlinend, y = 0, yend = 0, size = 1.2) +
  annotate("text", x = xcor1, y = ycor1, label = annolabel1, 
           angle = 90, hjust = -0.1, size = 3.2, fontface = "bold.italic") +
  annotate("text", x = xcor2, y = ycor2, label = annolabel2, 
           angle = 90, hjust = -0.1, size = 3.2, fontface = "bold.italic") +
  annotate("text", x = xcor3, y = ycor3, label = annolabel3, 
           angle = 90, hjust = -0.1, size = 3.2, fontface = "bold.italic") +
  annotate("segment", x = 1935.2 + cizgi, xend = 1935.2 + cizgi, y = 0, yend = 19162, size = 1) +
  annotate("segment", x = 1937.2 + cizgi, xend = 1937.2 + cizgi, y = 0, yend = 69963, size = 1) +
  annotate("segment", x = 1930.3, xend = 1930.3, y = 350000, yend = 400500, size = 1) +
  theme(axis.line.x = element_blank(),
        axis.line.y = element_blank(),
        axis.text.y = element_blank(), 
        axis.ticks = element_blank(), 
        axis.title = element_blank(),
        axis.text.x = element_text(color = "black", size = 11, face = "bold", vjust = 1)) +
  theme(legend.title=element_blank(),
        legend.text = element_text(size = 11, face = "italic"),
        legend.position = c(0.33,0.75), 
        legend.justification = c(0,1), 
        legend.direction = 'vertical',
        legend.spacing.x = unit(0.3,"cm"))+
  theme(plot.margin = unit(c(5,1,1,1), "lines")) + 
  coord_cartesian(clip = 'off') +
  annotate("text", x = 1931, y = 500500, label = "Yurdun muhtelif bölgelerinde yapılan", size = 4) +
  annotate("text", x = 1931, y = 470000, label = ". Tifo Aşısı", size = 6, fontface = "bold") +
  annotate("text", x = 1931, y = 440000, label = "1927 \u2013 1937", size = 3.7 , fontface = "bold") +
  scale_x_continuous(breaks = seq(1927,1937)) +
  scale_y_continuous(expand = c(0,0))
