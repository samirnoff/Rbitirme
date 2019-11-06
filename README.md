# Tarihsel Önem Taşıyan Grafiklerin Yeniden Çizimi

Bu projenin amacı, Türkiye Cumhuriyeti'nin ilk yıllarında çeşitli verilerin görselleştirilmesi amacıyla elle çizilen grafiklerin R programlama dili ile bilgisayar ortamında yeniden çizilmesidir. 

## Kullanılan Kütüphaneler

Projede yalnızca R ggplot2 kütüphanesi kullanılmıştır.

```
library(ggplot2)
```

## Çalışmalarımız

### Krom Cevheri İstihsâlimiz

1923 - 1937 yılları arasındaki krom cevheri üretimimizi gösteren grafiktir.

```R
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
  annotate(geom="text", x=1929.5,y=190,label="KROM CEVHERİ İSTİHSÂLİMİZ", size= 9.3, fontface="italic") +
  annotate(geom="text", x=1922, y=0, label="Üç sfır\nilavesile",fontface="bold.italic", hjust=1, vjust=1.8) +
  annotate(geom="text", x=1922, y=220, label=expression(bold(underline("TON"))), hjust=1.15, vjust=0.2, size=5) +
  annotate(geom="segment",x=1922.13,xend=1922.13, y=0,yend=220,colour="black",size=1) +
  annotate(geom="rect", xmin = 1922, xmax = 1922.13, ymin = 20, ymax = 40, fill = "black") +
  annotate(geom="rect", xmin = 1922, xmax = 1922.13, ymin = 60, ymax = 80, fill = "black") +
  annotate(geom="rect", xmin = 1922, xmax = 1922.13, ymin = 100, ymax = 120, fill = "black") +
  annotate(geom="rect", xmin = 1922, xmax = 1922.13, ymin = 140, ymax = 160, fill = "black") +
  annotate(geom="rect", xmin = 1922, xmax = 1922.13, ymin = 180, ymax = 200, fill = "black")
```

![Krom Cevheri İstihsâlimiz](https://github.com/samirnoff/Rbitirme/blob/master/Graph/KromCevheri.jpeg)

### Şarap Satışı

1932 - 1937 yılları arasındaki şarap satışını gösteren grafiktir.

```R
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
```
![Şarap Satışı](https://github.com/samirnoff/Rbitirme/blob/master/Graph/SarapSatisi.jpeg)

### Orta Öğretim Öğretmen Okulu Talebe Sayısı

1923 - 1938 yılları arasında orta öğretim seviyesindeki öğretmen okullarında bulunan öğrencilerin sayısını gösteren grafiktir.

```R
Sys.setlocale(locale = "Turkish")
library(ggplot2)
tarih <- seq(1923,1937)
miktar <- c(2528,3771,4138,4558,5022,5749,5410,5536,5298,2059,2726,2477,2805,2699,2404)
tarih2 <- c(1937)
miktar2 <- c(2404)
talebe <- data.frame(tarih,miktar,tarih2,miktar2)
ggplot(talebe, aes(tarih,miktar)) + geom_line(size=2) + 
  geom_text(label = miktar2, hjust = -0.1, vjust = 0.1  , aes(tarih2,miktar2)) +
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
  theme(plot.margin = unit(c(2,3,3,3), "lines")) +
  coord_cartesian(clip = 'off') +
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
  annotate(geom = "text", x = 1936.5, y = 2750, label = "2699", fontface = "bold")
  ```
  
  ![Talebe Sayısı](https://github.com/samirnoff/Rbitirme/blob/master/Graph/TalebeSayisi.jpeg)
  
  ### Trahom Mücadele Teşkilâtı - Hastane ve Dispanserler Faaliyeti
  
  1925 - 1937 yılları arasında Trahom hastalığına karşı kurulan hastane ve dispanserlerin faaliyetlerini gösteren grafiktir.
  
  ```R
  Sys.setlocale(locale = "Turkish")
library(ggplot2)
tarih <- seq(1925,1937)
miktar <- c(3000,14500,7000,14500,9000,21500,17500,18500,20800,23500,21700,24000,24500)
miktar2 <- c(7000,19800,18500,20800,26800,32500,39500,46000,52500,54000,49000,54300,60000)
trahommucadele <- data.frame(tarih,miktar,miktar2)
ggplot(trahommucadele, aes(x=tarih)) +
  geom_line(aes(y=miktar), size=1.3) + geom_point(aes(y=miktar), size=3)+
  geom_line(aes(y=miktar2), size=1.3, linetype="dashed") + geom_point(aes(y=miktar2), size=2) +
  labs(title = "TRAHOM MÜCADELE TEŞKİLÂTI",
       subtitle = "Hastane ve Dispanserler Faaliyeti\n",
       caption = "1925 \u2013 1937") +
  theme_classic() +
  theme(panel.grid.major = element_line(colour = "black", size = 1)) +
  theme(plot.title = element_text(hjust = 0.5, size = 17, face = "bold")) +
  theme(plot.subtitle = element_text(hjust = 0.5, size = 17, face = "bold.italic")) +
  theme(axis.title = element_blank())  +
  theme(plot.caption = element_text(hjust = 0.5, vjust = 157, face = "bold", size = 17)) +
  theme(axis.text.x = element_text(size=15, face="bold",hjust = 0.7, vjust = 0.5, angle = 89.9, colour = "black")) +
  theme(axis.text.y = element_text(size=12, face="bold", colour = "black")) +
  theme(axis.line.x = element_line(size = 1.4)) +
  theme(axis.line.y = element_line(size = 1.4)) +
  
  scale_x_continuous(
    limits = c(1925,1937),
    breaks = seq(1925,1937),
    labels = c("1925","1926","1927","1928","1929","1930","1931","1932","1933","1934","1935","1936","1937"),
    expand = c(0,0.3)
  ) +
  scale_y_continuous(
    limits = c(0,61000),
    breaks = c(0,2000,4000,6000,8000,10000,13000,16000,19000,22000,25000,29000,33000,37000,41000,45000,53000,61000),
    labels = c("0","2.000","4","6","8","10.000","20","40","60","80","100.000","200","400","600","800","1.000.000","2.000.000","3.000.000"),
    expand = c(0,0)
  ) +
  annotate(geom="rect", xmin = 1925.1, xmax = 1930.5, ymin = 53500, ymax = 60000, fill = "white" ) +
  annotate(geom="text", x=1928.5,y=58000,label="Muayene Sayısı", size= 5, fontface="bold.italic") +
  annotate(geom="rect", xmin = 1925.5, xmax = 1926.5, ymin = 57900, ymax = 58000, fill = "black" ) +
  annotate(geom="text", x=1928.5,y=55000,label="İlaçlananlar  \" ", size= 5, fontface="bold.italic") +
  annotate(geom="text", x=1926,y=55000,label="- - - - ", size= 5, fontface="bold")
  ```
  ![Trahom Mücadele](https://github.com/samirnoff/Rbitirme/blob/master/Graph/TrahomMucadele.jpeg)
  
  ### Heybeliada Verem Sanatoryumu Mesaisi
  
  1924 - 1937 yılları arasında Heybeliada Verem Sanatoryumu tarafından yapılan tedavi ve çalışmaları gösteren grafiktir.
  
  ```R
  Sys.setlocale(locale = "Turkish")
library(ggplot2)
tarih <- seq(1924,1937)
miktar <- c(20,120,110,90,89,120,125,133,130,207,240,265,290,290)
miktar2 <- c(NA,310,400,390,392,395,420,460,455,550,565,580,640,660)
verem <- data.frame(tarih,miktar,miktar2)
ggplot(verem, aes(x=tarih)) +
  geom_line(aes(y=miktar), size=1.3) + geom_point(aes(y=miktar), size=3)+
  geom_line(aes(y=miktar2), size=1.3, linetype="dashed") + geom_point(aes(y=miktar2), size=3) +
  labs(title = "HEYBELİADA VEREM SANATORYUMU MESAİSİ
  1924 \U2013 1937",
       subtitle = "Yarım Lugaritmik Diyağram") +
  theme_classic() +
  theme(panel.grid.major = element_line(colour = "black", size = 1)) +
  theme(plot.title = element_text(hjust = 0.5, size = 17, face = "bold")) +
  theme(plot.subtitle = element_text(hjust = 0.5, size = 17, face = "bold.italic")) +
  theme(axis.title = element_blank())  +
  theme(axis.text.x = element_text(size=15,  vjust = 0.7, hjust = 1, angle = 89.9, colour = "black")) +
  theme(axis.text.y = element_text(size=12,  colour = "black")) +
  theme(axis.line.x = element_line(size = 1.4)) +
  theme(axis.line.y = element_line(size = 1.4)) +
  theme(plot.margin = unit(c(1,1,1,2), "lines")) +
  scale_x_continuous(
    limits = c(1924,1937),
    breaks = seq(1924,1937),
    labels = c("1924","1925","1926","1927","1928","1929","1930","1931","1932","1933","1934","1935","1936","1937"),
    expand = c(0,0.5)
  ) +
  scale_y_continuous(
    limits = c(0,670),
    breaks = c(0,50,100,140,180,220,250,280,300,320,340,370,470,570,670),
    labels = c("0","50","100","2","3","4","500","6","7","8","9","1.000","5.000","10.000","14.000"),
    expand = c(0,0)
  ) +
  annotate(geom="rect", xmin = 1925.1, xmax = 1930.9, ymin = 540, ymax = 620, fill = "white" ) +
  annotate(geom="text", x=1928.2,y=590,label="Yatırılarak tedavi", size= 4.7, fontface="bold.italic") +
  annotate(geom="rect", xmin = 1925.5, xmax = 1926.5, ymin = 588, ymax = 590, fill = "black" ) +
  annotate(geom="text", x=1928.8,y=560,label="Laboratuvar ve Rontken ", size= 4.7, fontface="bold.italic") +
  annotate(geom="text", x=1926.1,y=560,label="- - - -  ", size= 6, fontface="bold")
  ```
  ![Verem Sanatoryumu](https://github.com/samirnoff/Rbitirme/blob/master/Graph/VeremSanatoryumu.jpeg)
  
  ### Duyunu Umumiye ve Devlet İnhisarı Zamanlarındaki Safi İçki Varidatı
  
  1902 - 1937 yılları arasında Duyunu Umumiye ve Devlet İnhisarı (tekeli) zamanlarındaki saf içki gelirini gösteren grafik
  
  ```R
  Sys.setlocale(locale = "Turkish")
library(ggplot2)
tarih <- seq(1902,1925)
miktar <- c(2300000,2300500,2200000,2400000,2500000,2600000,2500000,2700000,3000000,NA,NA,NA,NA,NA,5200000,5300000,5700000,5200000,5200000,5100000,5000000,4700000,5500000,6100000)
tarih2 <- c(1910,1916)
miktar2 <- c(3000000,5200000)
duyunu <- data.frame(tarih,miktar,tarih2,miktar2)
ggplot(duyunu, aes(tarih)) +
  geom_line(aes(y=miktar), size=1.3) + geom_point(aes(y=miktar), size=2) +
  geom_line(aes(x=tarih2, y=miktar2), linetype="dashed",size=1.3)+
  labs(title = "Duyunu Umumiye ve Devlet İnhisarı
         Zamanlarındaki safi içki varidatı") +
  theme_classic() +
  theme(panel.grid.major = element_line(colour = "black", size = 0.7)) +
  theme(plot.title = element_text(hjust = 0.5, size = 25, face = "bold.italic")) +
  theme(axis.title = element_blank())  +
  theme(axis.text.x = element_text(size=15, face="bold", vjust = -0.3, angle = 90, colour = "black")) +
  theme(axis.text.y = element_text(size=14, face="bold", vjust = 0, colour = "black")) +
  theme(axis.line.x = element_line(size = 3)) +
  theme(axis.line.y = element_line(size = 2)) +
  scale_x_continuous(
    limits = c(1901,1926),
    breaks = seq(1902,1926),
    labels = c("     2","     3","     4","     5","     6","     7","     8","     9","1910"," "," "," "," "," ",
               "1927","     8","     9","1930","     1","     2","     3","     4","     5","     6","     7"),
    expand = c(0,0)
  ) + 
  scale_y_continuous(
    limits = c(1000000,7000000),
    breaks = seq(1000000,7000000, by=200000),
    labels = c("1000000","2          ","4          ","6          ","8          ","2000000","2          ","4          ","6          ",
               "8          ","3000000","2          ","4          ","6          ","8          ","4000000","2          ","4          ",
               "6          ","8          ","5000000","2          ","4          ","6          ","8          ","6000000","2          ",
               "lira cari    "," "," "," "),
    expand = c(0,0)
  ) +
  annotate(geom="text", x=1914,y=6900000,label= " ,, 1 altın lira    10,60 carilira,, ", size= 5, fontface="bold.italic") +
  annotate(geom="rect", xmin = 1908.5, xmax = 1918.5, ymin = 6775000, ymax = 6790000, fill = "black" ) +
  annotate(geom="rect", xmin = 1908.5, xmax = 1918.5, ymin = 6745000, ymax = 6760000, fill = "black" ) 
  ```
  ![Duyunu Umumiye](https://github.com/samirnoff/Rbitirme/blob/master/Graph/DuyunuUmumiye.jpeg)
  
  
