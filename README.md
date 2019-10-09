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

```
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
  theme(axis.text.y = element_text(face="bold", size=14)) +
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


### Şarap Satışı

1932 - 1937 yılları arasındaki şarap satışını gösteren grafiktir.

```
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

```
