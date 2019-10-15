Sys.setlocale(locale = "Turkish")
library(ggplot2)
tarih <- seq(1923,1937)
miktar <- c(2528,3771,4138,4558,5022,5749,5410,5536,5298,2059,2726,2477,2805,2699,2404)
talebe <- data.frame(tarih,miktar)
ggplot(talebe, aes(tarih,miktar)) + geom_line(size=2) +
  theme_classic() +
  theme(panel.grid.major = element_line(colour = "black", size = 0.75)) +
  labs(
    title = expression(bold(paste(underline("ORTA ÖĞRETİM")))),
    subtitle = "ÖĞRETMEN OKULU TALEBE SAYISI"
  ) +
  theme(plot.title = element_text(size = 30, face="bold", hjust = 0)) +
  theme(plot.subtitle = element_text(size=30, face = "bold", hjust = 0.5)) +
  theme(axis.title = element_blank()) +
  theme(axis.text.x = element_text(angle = 65, face = "bold", vjust = 1, hjust = 1.15, size = 10, colour = "black")) +
  theme(axis.text.y = element_text(size = 14, face = "bold", colour = "black")) +
  theme(axis.line = element_line(size = 1)) + 
  scale_x_continuous(
    limits = c(1923,1937),
    breaks = seq(1923,1937),
    labels = c("1923- 24","1924- 25","1925- 26","1926- 27","1927- 28","1928- 29","1929- 30",
               "1930- 31","1931- 32","1932- 33","1933- 34","1934- 35","1935- 36","1936- 37","1937- 38"),
    expand = c(0,0)
  ) +
  scale_y_continuous(
    limits = c(1800,6200),
    breaks = seq(2000,6200, by = 200),
    labels = c("2000","200","400","600","800","3000","200","400","600","800","4000",
               "200","400","600","800","5000","200","400","600","800","6000",""),
    expand = c(0,0)
  ) +
  annotate(geom = "text", x = 1923.5, y = 2528, label = "2528", fontface = "bold") +
  annotate(geom = "text", x = 1924.5, y = 3730, label = "3771", fontface = "bold") +
  annotate(geom = "text", x = 1925.5, y = 4138, label = "4138", fontface = "bold") +
  annotate(geom = "text", x = 1926.5, y = 4550, label = "4558", fontface = "bold") +
  annotate(geom = "text", x = 1927.5, y = 5080, label = "5022", fontface = "bold") +
  annotate(geom = "text", x = 1928.5, y = 5749, label = "5749", fontface = "bold") +
  annotate(geom = "text", x = 1929.35, y = 5530, label = "5410", fontface = "bold", angle = 20, size = 3.7) +
  annotate(geom = "text", x = 1930.55, y = 5536, label = "5536", fontface = "bold") +
  annotate(geom = "text", x = 1931.5, y = 5298, label = "5298", fontface = "bold") +
  annotate(geom = "text", x = 1932.5, y = 2059, label = "2059", fontface = "bold") +
  annotate(geom = "text", x = 1933.5, y = 2726, label = "2726", fontface = "bold") +
  annotate(geom = "text", x = 1934.5, y = 2477, label = "2277", fontface = "bold") +
  annotate(geom = "text", x = 1935.5, y = 2900, label = "2805", fontface = "bold") +
  annotate(geom = "text", x = 1936.5, y = 2750, label = "2699", fontface = "bold") +
  annotate(geom = "text", x = 1936.6, y = 2352, label = "2404", fontface = "bold")
