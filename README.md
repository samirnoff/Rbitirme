# Tarihsel Önem Taşıyan Grafiklerin Yeniden Çizimi

Bu projenin amacı, Türkiye Cumhuriyeti'nin ilk yıllarında çeşitli verilerin görselleştirilmesi amacıyla elle çizilen grafiklerin R programlama dili ile bilgisayar ortamında yeniden çizilmesidir. 

## Kullanılan Paketler

Proje ilerledikçe paket listesinde güncellemeler olacaktır.

```
ggplot2

```

## Çalışmalarımız

### Krom Cevheri İstihsâlimiz

1923 - 1937 yılları arasındaki krom cevheri üretimimizi gösteren grafiktir.

```R
library(ggplot2)
tarih <- c(1923,1924,1925,1926,1927,1928,1929,1930,1931,1932,1933,1934,1935,1936,1937)
miktar <- c(0,4,7,4,18,10,15,25,22,50,70,115,145,160,190)
KromCevheri <- data.frame(tarih,miktar)
ggplot(KromCevheri, aes(tarih,miktar)) + geom_line(size=3.5) + 
  labs(caption=
         "Üç sıfır \nilavesile") +
  theme_classic() +
  theme(panel.grid.major = element_line(colour = "black", size = 1)) +
  theme(axis.title = element_blank()) +
  theme(axis.text.x = element_text(angle = 90, face = "bold", size = 15, vjust = 0.5)) +
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
  annotate(geom="rect", xmin = 1924.05, xmax = 1935.95, ymin = 181, ymax = 199, fill = "white" ) +
  annotate(geom="text", x=1930,y=190,label="KROM CEVHERİ İSTİHSÂLİMİZ", size= 8.5, fontface="italic")

```
![Krom Cevheri İstihsâlimiz](https://github.com/samirnoff/Rbitirme/blob/master/KromCevheri.jpeg)

### Şarap Satışı

1932 - 1937 yılları arasındaki şarap satışını gösteren grafiktir.

```R
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
  theme(axis.text.y = element_text(size=16, face="bold", colour = "black")) +
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

```
![Şarap Satışı](https://github.com/samirnoff/Rbitirme/blob/master/SarapSatisi.jpeg)

### Orta Öğretim Öğretmen Okulu Talebe Sayısı

1923 - 1938 tarihleri arasında orta öğretim seviyesindeki öğretmen okullarında bulunan öğrencilerin sayısını gösteren grafik

```R
library(ggplot2)
tarih <- seq(1923,1937)
miktar <- c(2528,3771,4138,4558,5022,5749,5410,5536,5298,2059,2726,2477,2805,2699,2404)
talebe <- data.frame(tarih,miktar)
ggplot(talebe, aes(tarih,miktar)) + geom_line(size=2) +
  theme_classic() +
  theme(panel.grid.major = element_line(colour = "black", size = 0.75)) +
  labs(
    title = expression(bold(paste(underline("ORTA ÖGRETIM")))),
    subtitle = "ÖGRETMEN OKULU TALEBE SAYISI"
  ) +
  theme(plot.title = element_text(size = 30, face="bold", hjust = 0)) +
  theme(plot.subtitle = element_text(size=30, face = "bold", hjust = 0.5)) +
  theme(axis.title = element_blank()) +
  theme(axis.text.x = element_text(angle = 65, face = "bold", vjust = 1, hjust = 1.15, size = 10)) +
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
  ```
  
  ![Talebe Sayısı](https://github.com/samirnoff/Rbitirme/blob/master/TalebeSayisi.jpeg)
