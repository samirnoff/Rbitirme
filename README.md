# Tarihsel Önem Taşıyan Grafiklerin Yeniden Çizimi

Bu projenin amacı, Türkiye Cumhuriyeti'nin ilk yıllarında çeşitli verilerin görselleştirilmesi amacıyla elle çizilen grafiklerin R programlama dili ile bilgisayar ortamında yeniden çizilmesidir. 

## İçindekiler 

<!--ts-->
  * [Kullanılan Kütüphaneler](#Kullanılan-Kütüphaneler)
  * [Çalışmalarımız](#Çalışmalarımız)
    * [Çizgi Grafikleri](#Çizgi-Grafikleri)
      * [Krom Cevheri İstihsalimiz](#Krom-Cevheri-İstihsâlimiz)
<!--te-->

## Kullanılan Kütüphaneler

Projede yalnızca R ggplot2 kütüphanesi kullanılmıştır.

```
library(ggplot2)
```

## Çalışmalarımız

### Çizgi Grafikleri

#### Krom Cevheri İstihsâlimiz

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

![Krom Cevheri İstihsâlimiz](https://github.com/samirnoff/Rbitirme/blob/master/Graphs/Lines/KromCevheri.jpeg)

#### Şarap Satışı

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
![Şarap Satışı](https://github.com/samirnoff/Rbitirme/blob/master/Graphs/Lines/SarapSatisi.jpeg)

#### Orta Öğretim Öğretmen Okulu Talebe Sayısı

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
  
  ![Talebe Sayısı](https://github.com/samirnoff/Rbitirme/blob/master/Graphs/Lines/TalebeSayisi.jpeg)
  
  #### Trahom Mücadele Teşkilâtı - Hastane ve Dispanserler Faaliyeti
  
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
  ![Trahom Mücadele](https://github.com/samirnoff/Rbitirme/blob/master/Graphs/Lines/TrahomMucadele.jpeg)
  
  #### Heybeliada Verem Sanatoryumu Mesaisi
  
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
  ![Verem Sanatoryumu](https://github.com/samirnoff/Rbitirme/blob/master/Graphs/Lines/VeremSanatoryumu.jpeg)
  
  #### Duyunu Umumiye ve Devlet İnhisarı Zamanlarındaki Safi İçki Varidatı
  
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
  coord_cartesian(clip = 'off') +
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
               ""," "," "," "),
    expand = c(0,0)
  ) +
  annotate(geom="text", x=1913.5,y=6900000,label= " ,, 1 altın lira    10,60 carilira,, ", size= 5, fontface="bold.italic") +
  annotate(geom="text", x=1902, y=6500000, label="lira cari",fontface="bold.italic", hjust=2.6, size= 3) +
  annotate(geom="rect", xmin = 1908.5, xmax = 1918.5, ymin = 6775000, ymax = 6790000, fill = "black" ) +
  annotate(geom="rect", xmin = 1908.5, xmax = 1918.5, ymin = 6745000, ymax = 6760000, fill = "black" )
  ```
  ![Duyunu Umumiye](https://github.com/samirnoff/Rbitirme/blob/master/Graphs/Lines/DuyunuUmumiye.jpeg)
  
  #### Cumhuriyet Devrinde Elektrik Takatının Çoğalışını Gösteren Grafik
  
  1923 - 1943 yılları arasında elektrik miktarını gösteren grafik
  
  ```R
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
  annotate("text", x = 1933.3, y = 0, label = "Y  I   L     L   A  R", size = 9, fontface = "italic", vjust = 1.8)
  ```
![Elektrik](https://github.com/samirnoff/Rbitirme/blob/master/Graphs/Lines/Elektrik.jpeg)

#### Yolcu, Hayvan ve Yük miktarı

```R
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
```

![Yolcu Hayvan Yük](https://github.com/samirnoff/Rbitirme/blob/master/Graphs/Lines/YolcuAdet.jpeg)

#### Tahsilatın Son Beş Yıllık İnkişaf Seyri

1933 - 1937 yılları arasında tahsilat miktarının gelişimini gösteren grafik

```R
library(ggplot2)
ay <- rep(c(1:12),5)
uc <- c(10,25,40,51,62,80,89,111,122,138,151,172)
dort <- c(14,30,42,60,80,90,115,130,150,163,180,198)
bes <- c(18,32,45,62,82,100,120,140,152,170,187,207)
alti <- c(22,42,60,80,105,130,147,162,180,200,220,240)
yedi <- c(30,60,80,100,120,140,163,181,200,220,240,260)
deger <- c(uc,dort,bes,alti,yedi)
grup <- rep(c("1933","1934","1935","1936","1937"), each = length(uc))

tahsilat <- data.frame(ay, deger, grup)

ggplot(tahsilat, aes(x = ay, y = deger ,linetype = grup)) +
  geom_line(data = subset(tahsilat, grup == "1933"), size = 1) +
  geom_line(data = subset(tahsilat, grup == "1934"), size = 1) +
  geom_line(data = subset(tahsilat, grup == "1935"), aes(y = deger - 0.7)) + 
  geom_line(data = subset(tahsilat, grup == "1935"), aes(y = deger + 0.7)) +
  geom_line(data = subset(tahsilat, grup == "1936"), size = 1.2) + 
    geom_line(data = subset(tahsilat, grup == "1936"), aes(y = deger - 0.7), linetype = "solid") + 
    geom_line(data = subset(tahsilat, grup == "1936"), aes(y = deger + 0.7), linetype = "solid") +
  geom_line(data = subset(tahsilat, grup == "1937"),size = 1.4) +
  geom_point(data = subset(tahsilat, grup == "1933"), shape = 21,stroke = 1.5, size = 1.8) +
  geom_point(data = subset(tahsilat, grup == "1934"), shape = 21, stroke = 1.5, size = 1.8) +
  geom_point(data = subset(tahsilat, grup == "1935"), shape = 21, stroke = 1.5, size = 1.8) +
  geom_point(data = subset(tahsilat, grup == "1936"), shape = 21, stroke = 1.5,size = 1.8) +
  geom_point(data = subset(tahsilat, grup == "1937"), shape = 21, stroke = 1.5, size = 1.5) +
  ggtitle(label = "TAHSİLATIN SON BEŞ YILLIK İNKİŞAF SEYRİ  .\n") +
  theme_classic() +
  coord_cartesian(clip = 'off') +
  annotate("rect", color = "white", fill = "white", xmin = -0.2, xmax = 0.4, ymin = seq(35,275,40), ymax = seq(45,285,40)) +
  annotate("rect", color = "white", fill = "white", xmin = 12.6, xmax = 13.2, ymin = seq(35,275,40), ymax = seq(45,285,40)) +
  annotate("text", color = "black", x = c(0.25,12.9), y = 41, label = "40", fontface = "bold") +
  annotate("text", color = "black", x = c(0.25,12.9), y = 81, label = "80", fontface = "bold") +
  scale_x_continuous(breaks = c(1:12),
                     labels = c(paste(as.roman(1:12))),
                     limits = c(-0.2,13.2),
                     expand = c(0,0),
                     sec.axis = dup_axis()) +
  scale_y_continuous(breaks = seq(0,280,40),
                     labels = c("","","","120","160","200","240","280"),
                     limits = c(0,300),
                     expand = c(0,0),
                     sec.axis = dup_axis()) +
    annotate("text", x = c(0.35,12.67), y = 10, label = "Milyon", fontface = "bold", size = 3.5) +
  annotate("text", x = c(0.4,12.9), y = 0, label = "Ay", fontface = "bold", vjust = 1.5, size = 4.5) +
  scale_linetype_manual(values = c("dashed","solid","solid","longdash","solid")) +
  theme(legend.direction = "horizontal",
        legend.title = element_blank(),
        legend.position = c(0.4, -0.2),
        legend.spacing.x = unit(2.5,"cm"),
        legend.box = "vertical") +  
  guides(linetype = guide_legend(label.position = "bottom")) +
  theme(panel.grid.major = element_line(colour = "black", size = 1),
        panel.grid.minor.y = element_line(color = "black", size = 0.7),
        plot.margin = unit(c(1,0,6,0), "lines"),
        axis.title = element_blank(),
        axis.text.y.left = element_text(size = 11, face = "bold", color = "black", vjust = 0.4, hjust = 2.35),
        axis.text.y.right = element_text(size = 11, face = "bold", color = "black", vjust = 0.4, hjust = -1.32),
        axis.text.x.bottom = element_text(size = 12, face = "bold", color = "black"),
        axis.text.x.top = element_blank(),
        axis.ticks = element_blank(),
        axis.line.y = element_blank(),
        axis.line.x = element_line(size = 1.6),
        plot.title = element_text(hjust = 0.5, face = "bold"))
```

![tahsilat](https://github.com/samirnoff/Rbitirme/blob/master/Graphs/Lines/tahsilat.jpeg)

#### Sümerbank Fabrikalarının Toptan Satış Endeksi

1930 - 1937 yılları arasında Sümerbank fabrikalarının satışını gösteren grafik

```R
library(ggplot2)
tarih <- seq(1930,1937)
devlet <- c(NA,NA,80,90,140,180,105,225)
piyasa <- c(140,140,150,200,290,240,690,890)
toptan <- data.frame(tarih,devlet,piyasa)

ggplot(toptan, aes(x=tarih)) +
  geom_line(aes(y=devlet), size=1, linetype="dashed" ) +
  geom_line(aes(y=piyasa), size=1)  +
  geom_curve(aes(x = 1930, y = 170, xend = 1932, yend = 100), curvature = 0.15, size = 2.2) +
  geom_curve(aes(x = 1932, y = 100, xend = 1934, yend = 250), curvature = 0.2, size = 2.2) +
  geom_curve(aes(x = 1934, y = 250, xend = 1937, yend = 875), curvature = 0.09, size = 2.2) +
  geom_curve(aes(x = 1930, y = 105, xend = 1933, yend = 100), curvature = 0.09, size = 1.8, linetype="dashed") +
  geom_curve(aes(x = 1933, y = 100, xend = 1937, yend = 205), curvature = 0.01, size = 1.8, linetype="dashed") +
  labs(title = "SÜMER BANK FABRİKALARININ \n TOPTAN SATIŞ ENDEKSİ",
       subtitle = "1929 = 100") +
  theme_classic() +
  theme(panel.grid.major = element_line(colour = "black", size = 0.5)) +
  theme(plot.title = element_text(hjust = 0.5, size = 20)) +
  theme(plot.subtitle = element_text(hjust = 0.5, size = 16)) +
  theme(plot.margin = unit(c(1,1,1,1), "lines")) +
  theme(axis.line.y = element_blank(), axis.line.x = element_blank(),
        axis.text.x = element_text(color = "black", size = 13), 
        axis.text.y = element_text(color = "black", size = 13), 
        axis.ticks.y = element_blank(), axis.ticks.x = element_blank(), axis.title = element_blank()) +
  scale_x_continuous(limits = c(1930,1937), breaks = c(1930,1932,1934,1936,1937),
       labels = c("1930","32","34","36","1937"),
       expand = c(0,0)) +
  scale_y_continuous(limits = c(0,900), breaks = c(0,100,300,500,700,900),
       labels = c("0\n","100","300","500","700","900"),
       expand = c(0,0),
       sec.axis = dup_axis()) +
  coord_cartesian(clip = 'off') +
  annotate(geom="text", x=1931.5 ,y=200,label="Asli rakamlar", size= 4, fontface="bold") +
  annotate(geom="text", x=1934.5 ,y=220,label="Asli rakamlar", size= 4, fontface="bold") +
  annotate(geom="text", x=1934.15 ,y=380,label="2° Trend", size= 4, fontface="bold") +
  annotate(geom="text", x=1935 ,y=120,label="2° Trend", size= 4, fontface="bold") +
  annotate(geom="text", x=1931 ,y=0,label="31", size= 4.5, vjust = 1.4) +
  annotate(geom="text", x=1933 ,y=0,label="33", size= 4.5, vjust = 1.4) +
  annotate(geom="text", x=1935 ,y=0,label="35", size= 4.5, vjust = 1.4) +
  annotate("segment", x = 1931 , xend = 1931, y = 0, yend = 20, size = 0.5) +
  annotate("segment", x = 1933 , xend = 1933, y = 0, yend = 20, size = 0.5) +
  annotate("segment", x = 1935 , xend = 1935, y = 0, yend = 20, size = 0.5) +
  annotate("rect", xmin = 1931.5 , xmax = 1933, ymin = 800, ymax = 899, colour = "white", fill = "white") +
  annotate(geom="text", x=1932 ,y=860,label="DEVLETE SATIŞ", size= 4, fontface="bold") +
  annotate(geom="text", x=1932 ,y=830,label="PİYASAYA SATIŞ", size= 4, fontface="bold") +
  annotate("segment", x = 1930.5 , xend = 1931.3, y = 830, yend = 830, size = 0.5) +
  annotate("segment", x = 1930.5 , xend = 1931.3, y = 825, yend = 825, size = 1.5) +
  annotate("segment", x = 1930.5 , xend = 1931.3, y = 860, yend = 860, size = 0.5, linetype = "dashed") +
  annotate("segment", x = 1930.5 , xend = 1931.3, y = 855, yend = 855, size = 1.2, linetype = "dashed") +
  annotate("point" , x=1931, y=140) + annotate("point" , x=1932, y=150) + annotate("point" , x=1933, y=200) +
  annotate("point" , x=1936, y=690) +
  geom_curve(x=1931.7 , y= 180, xend=1931.8, yend=150, arrow=arrow(length = unit(0.25,"cm")), size=1, color="black", curvature = -0.2) +
  geom_curve(x=1934.4 , y= 360, xend=1934.5, yend=330, arrow=arrow(length = unit(0.25,"cm")), size=1, color="black", curvature = 0.2) +
  geom_curve(x=1935 , y= 200, xend=1935.1, yend=180, arrow=arrow(length = unit(0.25,"cm")), size=1, color="black", curvature = -0.2) +
  geom_curve(x=1934.65 , y= 115, xend=1934.5, yend=125, arrow=arrow(length = unit(0.25,"cm")), size=1, color="black", curvature = -0.2)
```

![Toptan](https://github.com/samirnoff/Rbitirme/blob/master/Graphs/Lines/Toptan.jpeg)

### Bar Grafikleri

#### Belediyelere Ait Hastaneler Mesaisi 

1928 - 1937 yılları arasında devlet hastanelerince yapılan tedavi sayısı

```R
Sys.setlocale(locale = "Turkish")
library(ggplot2)
yatak <- c(12188,12746,12810,15625,14600,15757,17121,17213,18004,18193)
tedavi <- c(30774,30670,34689,57285,66959,84625,126324,145483,159853,177075)
zaman <- rep(seq(1928,1937),2)
deger <- c(yatak,tedavi) 
grup <- factor(c(rep(c("Yatakda tedavi sayısı", "Ayakda       \"           \" "), each=length(yatak))),
               levels=c("Yatakda tedavi sayısı", "Ayakda       \"           \" "))
data <- data.frame("x"=zaman, "y"=deger, "grp"=grup)
bold.text <- element_text(face = "bold", color = "black", size = 12)
xcor <- rep(paste(c(seq(1928,1937)),sep=""),2)
ycor <- deger + 100
labell <- c("12.188","12.746","12.810","15.625","14.600","15.757","17.121","17.213","18.004",
            "18.193","30.774","30.670","34.689","57.285","66.959","84.625","126.324","145.483","159.853","177.075")


ggplot(data=data,aes(x=factor(zaman), y=deger, fill=grup, color=grup, alpha=grup)) +
  ggtitle("BELEDiYELERE AiT HASTANELER MESAİSİ \n 1928\u20131937")+
  geom_bar(stat="identity",position ="identity",color="black", size=1.25, width=0.65) +
  theme_classic()+
  scale_fill_manual(values=c("black","white")) +
  scale_alpha_manual(values=c(1, 0))+
  theme(axis.line.y=element_blank(), axis.text.y = element_blank(), 
        axis.ticks = element_blank(), axis.title = element_blank(),
        axis.line.x = element_line(colour = "black", size = 1.2))+
  theme(title = bold.text,axis.text.x = bold.text, plot.margin = margin(0.5, 0.5, 0.5, 0.5, "cm"))+
  theme(plot.title=element_text(vjust=0.95, hjust=0.3,family="sans"))+
  theme(legend.title=element_blank(),legend.text = element_text(size=12,face = "bold.italic"),legend.position=c(0,0.90), 
        legend.justification=c(0,1), legend.direction='vertical',legend.spacing.x = unit(0.15,"cm"),
        legend.key = element_rect(size = 5, fill = "white", colour = "white")) +
  annotate("text", x = xcor, y = ycor, label = labell, 
           color = "black", angle = 90, hjust = -0.1, size=4, fontface = "bold.italic")+
  scale_x_discrete(breaks=c(1928,1929,1930,1931,1932,1933,1934,1935,1936,1937))+ 
  scale_y_continuous(expand = c(0,0))+
  guides(fill=guide_legend(keywidth=0.78,keyheight=0.30,default.unit="inch")) +
  coord_cartesian(clip = 'off')
```

![Belediye hastane](https://github.com/samirnoff/Rbitirme/blob/master/Graphs/Bars/BelediyeHastane.jpeg)

#### Devlet Frengi Mücadele Teşkilatı Tarafından Tedavi İçin Vilayetlere Gönderilen İlaçlar

1926 - 1937 yılları arasında frengi hastalığına karşı mücadele kapsamında vilayetlere gönderilen ilaç miktarını gösteren grafik

```R
library(ggplot2)
zaman <- rep(seq(1926,1937),4)
arsenobenzol <- c(NA,17,17,14,32,32,56,10,24,36,25,31)
bizmut <- c(108,25,33,69,84,62,3,5,13,29,38,70)
civa <- c(93,115,72,61,80,41,154,172,173,201,177,202)
iyodur <- c(NA,NA,NA,NA,NA,NA,NA,NA,26,34,35,28)
deger <- c(arsenobenzol,bizmut,civa,iyodur)
grup <- factor(c(rep(c("Arsenobenzol","Bizmut müstahlebi","Civa","İyodür ve civa merhemi"), each = length(civa))),
               levels = c("Arsenobenzol","Bizmut müstahlebi","Civa","İyodür ve civa merhemi"))
varib <- c(26,34,35,28)
xnokta <- runif(144,1934.2,1934.35)
ynokta <- runif(144,0,varib)
ek1 <- c(0,1,2,3)
xcor1 <- seq(1926,1937) -0.3
xcor2 <- seq(1926,1937) - 0.1
xcor3 <- seq(1926,1937) + 0.09
xcor4 <- seq(1926,1937) + 0.27
ycor1 <- arsenobenzol
ycor2 <- bizmut
ycor3 <- civa
ycor4 <- iyodur
xlab <- runif(24,1928,1928.2)
ylab <- runif(24,169,174)
frengi <- data.frame(zaman,deger,grup,xnokta,ynokta)
annolabel1 <- c("","17","17","14","32","32","56","10","24","36","25","31")
annolabel2 <- c("108","25","33","69","84","62","3","5","13","29","38","70")
annolabel3 <- c("93","115","72","61","80","41","154","172","173","201","177","202")
annolabel4 <- c("","","","","","","","","26","34","35","28")
cizgi <- c(0,0.06,0.12)
ek <- seq(0,11)
xline <- c(1925.65) + ek
xlinend <- c(1926.35) + ek

ggplot(frengi, aes(x = zaman, y = deger, fill = grup, color = grup)) +
  geom_bar(stat = "identity", position = position_dodge(), color = "black", size = 1.25, width = 0.70) +
  scale_fill_manual(values=c("black","white","white","white"))  +
  geom_point(x=xnokta + ek1, y=ynokta + ek1, size=0.5,colour="black")+
  theme_classic() +
  theme(plot.margin = unit(c(2,1,1,1), "lines")) +  
  labs(caption = "Sayılar kiloyu göstermektedir") +
  theme(plot.caption = element_text(face = "bold.italic", vjust = -5, hjust = 0.1)) +
  theme(axis.line.y = element_blank(),
        axis.text.y = element_blank(), 
        axis.ticks = element_blank(), 
        axis.title = element_blank(),
        axis.text.x = element_text(color = "black", size = 12, hjust = 0.5, vjust = 0.5, face = "bold"),
        axis.line.x = element_blank()) +
  theme(legend.position= "none") +
  annotate("segment", x = xline, xend = xlinend, y = 0, yend = 0, size = 1.1) +
  annotate("text", x = 1931, y = 230, label = "Devlet Frengi Mücadele Teşkilatı tarafından tedavi için", size = 5) +
  annotate("text", x = 1931, y = 218, label = "Vilayetlere gönderilen ilaçlar", size = 6, fontface = "bold") +
  annotate("text", x = 1931, y = 205, label = "1926 \u2013 1937", size = 4.5) +
  annotate("text",x = xcor1, y = ycor1, label = annolabel1, angle = 90, fontface = "bold.italic",
           hjust = -0.2, size = 3) +
  annotate("text",x = xcor2, y = ycor2, label = annolabel2, angle = 90, fontface = "bold.italic",
           hjust = -0.5, size = 3) +
  annotate("text",x = xcor3, y = ycor3, label = annolabel3, angle = 90, fontface = "bold.italic",
           hjust = -0.2, size = 3) +
  annotate("text",x = xcor4, y = ycor4, label = annolabel4, angle = 90, fontface = "bold.italic",
           hjust = -0.2, size = 3) +
  annotate("segment", x = 1926 + cizgi, xend = 1926 + cizgi, y = 0, yend = 93, size = 1) +
  annotate("segment", x = 1927 + cizgi, xend = 1927 + cizgi, y = 0, yend = 115, size = 1) +
  annotate("segment", x = 1928 + cizgi, xend = 1928 + cizgi, y = 0, yend = 72, size = 1) +
  annotate("segment", x = 1929 + cizgi, xend = 1929 + cizgi, y = 0, yend = 61, size = 1) +
  annotate("segment", x = 1930 + cizgi, xend = 1930 + cizgi, y = 0, yend = 80, size = 1) +
  annotate("segment", x = 1931 + cizgi, xend = 1931 + cizgi, y = 0, yend = 41, size = 1) +
  annotate("segment", x = 1932 + cizgi, xend = 1932 + cizgi, y = 0, yend = 154, size = 1) +
  annotate("segment", x = 1933 + cizgi, xend = 1933 + cizgi, y = 0, yend = 172, size = 1) +
  annotate("segment", x = 1934 + cizgi, xend = 1934 + cizgi, y = 0, yend = 173, size = 1) +
  annotate("segment", x = 1935 + cizgi, xend = 1935 + cizgi, y = 0, yend = 201, size = 1) +
  annotate("segment", x = 1936 + cizgi, xend = 1936 + cizgi, y = 0, yend = 177, size = 1) +
  annotate("segment", x = 1937 + cizgi, xend = 1937 + cizgi, y = 0, yend = 202, size = 1) +
  coord_cartesian(clip = 'off') +
  scale_y_continuous(expand = c(0,0)) +
  scale_x_continuous(breaks = seq(1926,1937), expand = c(0,0.1)) +
  annotate("rect", xmin = 1928 , xmax = 1928.2 , ymin = 190, ymax = 195, colour = "black", fill= "black", size = 1) +
  annotate("rect", xmin = 1928 , xmax = 1928.2 , ymin = 183, ymax = 188, colour = "black", fill= "white", size = 1) +
  annotate("rect", xmin = 1928 , xmax = 1928.2 , ymin = 176, ymax = 181, colour = "black", fill= "white", size = 1) +
  annotate("rect", xmin = 1928 , xmax = 1928.2 , ymin = 169, ymax = 174, colour = "black", fill= "white", size = 1) +
  annotate(geom="text", x=1929 ,y=192.5 ,label="Arsenobenzol", size= 3.2, fontface="italic") +
  annotate(geom="text", x=1929.2 ,y=185.5 ,label="Bizmut müstahlebi", size= 3.2, fontface="italic") +
  annotate(geom="text", x=1928.6 ,y=178.5 ,label="Civa", size= 3.2, fontface="italic") +
  annotate(geom="text", x=1929.4 ,y=171.5 ,label="İyodür ve civa merhemi", size= 3.2, fontface="italic") +
  annotate("segment", x = 1928.008 + cizgi, xend = 1928.008 + cizgi, y = 176, yend = 181, size = 1) +
  annotate("point", x=xlab, y=ylab, size=0.5, colour= "black")
```

![Frengi Mücadele](https://github.com/samirnoff/Rbitirme/blob/master/Graphs/Bars/Frengi.jpeg)

#### Hususi İdarelere Ait Hastaneler Mesaisi

1926 - 1937 yılları arasında özel hastanelerin yaptığı tedavi sayılarını gösteren grafik

```R
Sys.setlocale(locale = "Turkish")
library(ggplot2)
yatak <- c(17700,22661,24851,37117,54065,50562,54318,57570,62301,63468,70025,74033)
tedavi <- c(NA,45333,50286,116765,164381,218366,264382,299398,351547,374318,308366,357450)
zaman <- rep(seq(1926,1937),2)
deger <- c(yatak,tedavi)  
grup <- factor(c(rep(c("Yatakda tedavi sayısı", "Ayakta          \"       \" "), each=length(yatak))),
               levels=c("Yatakda tedavi sayısı", "Ayakta          \"       \" "))
data <- data.frame("x"=zaman, "y"=deger, "grp"=grup) 
text <- element_text(color = "black", size = 14)
xcor <- rep(seq(1926,1937),2)
ycor <- deger + 100
labell <- c("17.700","","","37.117","54.065","50.562","54.318","57.570","62.301","63.468","70.025","74.033",
            "16.009","45.333","50.286","116.765","164.381","218.366","264.382","299.398","351.547","374.318","308.366","357.450")
labell2 <- c("","22.661","24.851","","","","","","","","","","","","","","","","","","","","","")

ggplot(data=data,aes(x=zaman, y=deger, fill=grup, color=grup, alpha=grup)) +
  labs(title = "HUSUSİ İDARELERE AİT HASTANELER MESAİSİ
  
       ",
       subtitle = "1926 \u2013 1937\n")+
  geom_bar(stat="identity",position =position_dodge(width = 0.3),color="black", size=1.35, width=1.5) +
  theme_classic()+
  scale_fill_manual(values=c("black","white")) +
  scale_alpha_manual(values=c(1, 0))+
  theme(axis.line.y=element_blank(), axis.text.y = element_blank(),
        axis.ticks = element_blank(), axis.title = element_blank(),
        axis.line.x = element_line(colour = "black", size = 1.2))+
  theme(title = text,axis.text.x = text, plot.margin = margin(0.5, 0.5, 0.5, 0.5, "cm"))+
  theme(plot.title=element_text(family="sans", hjust = 0.4),
        plot.subtitle=element_text(size= 16, family="sans",hjust = 0.45, vjust = 14))+
  theme(legend.title=element_blank(),legend.text = element_text(size=12,face = "bold.italic"),legend.position=c(0,1), 
        legend.justification=c(0,1), legend.direction='vertical',legend.spacing.x = unit(0.15,"cm"),
        legend.key = element_rect(size = 5, fill = "white", colour = "white")) +
  coord_cartesian(clip = 'off') +
  theme(plot.margin = unit(c(1,1,1,1), "lines"))+
  annotate("text", x = xcor, y = ycor, label = labell, 
           color = "black", angle = 90, hjust = -0.1, size=4, fontface = "bold.italic")+
  annotate("text", x = xcor, y = ycor, label = labell2, 
           color = "black", angle = 0, hjust = 0.4, vjust= -0.5 , size=3.5, fontface = "bold.italic")+ 
  annotate("text", x = 1926, y = 16009, label = "16.009", 
           angle = 90, vjust = -2.5, hjust = 0,size = 4 ,fontface = "bold.italic") +
  annotate("rect", xmin = 1925.5, xmax = 1926.2, ymin = 0, ymax = 14000, color = "black", fill = "white", size = 1.35) +
  scale_x_continuous(breaks=c(1926,1927,1928,1929,1930,1931,1932,1933,1934,1935,1936,1937))+ 
  scale_y_continuous(expand = c(0,0))+
  guides(fill=guide_legend(keywidth=0.78,keyheight=0.30,default.unit="inch"))
```

![Hususi Hastane](https://github.com/samirnoff/Rbitirme/blob/master/Graphs/Bars/Hususi.jpeg)

#### İşçi ve İşyeri Sayısı

1937 tarihinde Türkiye Cumhuriyeti'ndeki İşçi ve İşyeri sayılarını gösteren grafik

```R
library(ggplot2)
iller <- rep(c(1.5:28.5),2)
isci <- c(1500,1500,1700,2000,1900,2050,3750,4000,4200,4400,4400,4900,4900,5000,
          5200,5200,5300,5300,5250,5250,7000,7200,9000,16000,17500,52500,58000,16000)
isyeri <- c(1250,1000,1700,1250,1250,1700,1250,2200,2300,4500,1900,2000,7000,6000,
            2200,3800,2300,7000,4500,4700,2200,3800,1000,1300,2000,26000,34000,21000)
is <- data.frame(iller, isci, isyeri)

label1 <- c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20",
            "21","22","23","24","25"," "," ","28" )
xcor <- seq(1.1,28.1)

cizgi1 <- seq(0,1500,400)
cizgi2 <- seq(0,1500,400)
cizgi3 <- seq(0,1700,400)
cizgi4 <- seq(0,2000,400)
cizgi5 <- seq(0,1900,400)
cizgi6 <- seq(0,2050,400)
cizgi7 <- seq(0,3750,400)
cizgi8 <- seq(0,4000,400)
cizgi9 <- seq(0,4200,400)
cizgi10 <- seq(0,4400,400)
cizgi11 <- seq(0,4400,400)
cizgi12 <- seq(0,4900,400)
cizgi13 <- seq(0,4900,400)
cizgi14 <- seq(0,5000,400)
cizgi15 <- seq(0,5200,400)
cizgi16 <- seq(0,5200,400)
cizgi17 <- seq(0,5300,400)
cizgi18 <- seq(0,5300,400)
cizgi19 <- seq(0,5250,400)
cizgi20 <- seq(0,5250,400)
cizgi21 <- seq(0,7000,400)
cizgi22 <- seq(0,7200,400)
cizgi23 <- seq(0,9000,400)
cizgi24 <- seq(0,16000,400)
cizgi25 <- seq(0,17500,400)
cizgi26 <- seq(0,52500,400)
cizgi27 <- seq(0,58000,400)
cizgi28 <- seq(0,16000,400)

ggplot(is, aes(x=iller))+
  geom_bar(aes(y = isci), position = "identity",
           stat = "identity", colour = "black", fill = "white", size = 0.7, width = 1) +
  geom_bar(aes(y = -isyeri), position = "identity",
           stat = "identity", colour = "black", fill = "black", size = 0.7, width = 1) +
  theme_classic() +
  theme(panel.grid.major = element_line(colour = "black", size = 0.5)) +
  theme(plot.margin = unit(c(1,1,1,-2), "lines")) +
  theme(axis.line.y = element_blank(), axis.line.x = element_blank(),
        axis.text.x = element_blank(), 
        axis.text.y = element_text(color = "black", size = 8, hjust = 2.35, vjust = -0.5, face = "bold"), 
        axis.ticks.y = element_blank(), axis.ticks.x = element_blank(), axis.title = element_blank()) +
  scale_x_continuous(breaks = c(-6,-4,-2,0,2,4,6,8,10,12,14,16,18,20,22,24,26,28,30,32,34,36,38,40),
                     limits = c(-6,40), expand = c(0,0)) +
  scale_y_continuous(breaks = c(-35000,-30000,-25000,-20000,-15000,-10000,-5000,0,
                                5000,10000,15000,20000,25000,30000,35000,40000,45000,50000,55000,60000,65000),
                     labels = c(" ","","","","","","",
                                "0       ","  5 000","10 000","15 000","20 000","25 000","30 000","35 000",
                                "40 000","45 000","50 000","55 000","60 000"," "),
                     limits = c(-35000,65000), expand = c(0,0)) +
  annotate("text", x = 33.3, y = 37500, label = " 1 Antalya \n 2 Alazığ \n 3 Tekirdağ \n 4 Tokat \n 5 Afyon \n 6 Kırklareli",
           size = 3, fontface = "bold", hjust = 0) + 
  annotate("text", x = 33.3, y = 22500, label = " 7 Erzurum \n 8 Mugla \n 9 Kütahya \n10 Manisa \n11 Kayseri \n12 Kocaeli",
           size = 3, fontface = "bold", hjust = 0) +
  annotate("text", x = 33.3, y = 8500, label = "13 Gaziantep \n14 Balıkesir \n15 Mersin \n16 Aydın \n17 Eskişehir", 
           size = 3, fontface = "bold", hjust = 0) +
  annotate("text", x = 33.3, y = -5250, label = "18 Ankara \n19 Samsun \n20 Bursa \n21 Malatya \n22 Seyhan \n23 Erzincan", 
           size = 3, fontface = "bold", hjust = 0) +
  annotate("text", x = 33.3, y = -19000, label = "24 Sivas \n25 Zonguldak \n26 İzmir \n27 İstanbul \n28 Diğer vilayetler",
           size = 3, fontface = "bold", hjust = 0) +
  annotate("text", x = -2.9, y = -13900, label = "100\n200\n300\n400\n500\n600\n700\n800\n900\n1000\n1100",
           size = 3, fontface = "bold", hjust = 1) +
  annotate("text", x = 6, y = 42500, label = expression(bold(paste(underline("31 . 19 .937 de")))),
           size = 7, fontface = "bold")  +
  annotate("text", x = 4, y = 37000, label = "İşçi", size = 7, fontface = "bold") +
  annotate("text", x = 6, y = 32000, label = "265,341    ", size = 7, fontface = "bold") +
  annotate("rect", xmin = 2, xmax = 8, ymin = 34500 , ymax = 34800 , size = 0.5, colour = "black", fill = "black") +
  annotate("rect", xmin = 0.5, xmax = 11.5, ymin = 40000 , ymax = 40300 , size = 0.5, colour = "black", fill = "black") +
  annotate("text", x = 7 , y = 36000, label = "sayısı", size = 3, fontface = "bold") +
  annotate("text", x = 4.5, y = -13000, label = "İşyer", size = 7, fontface = "bold") + 
  annotate("text", x = 8 , y = -14000, label = "sayısı", size = 3, fontface = "bold") +
  annotate("text", x = 5, y = -18000, label = "6252   ", size = 7, fontface = "bold") +
  annotate("rect", xmin = 2.5, xmax = 9, ymin = -15200 , ymax = -15500 , size = 0.5, colour = "black", fill = "black") +
  annotate("text", x = xcor, y = 21000, label = label1, fontface = "bold",hjust = -0.2, size = 3) +
  annotate("text", x = 26, y = 55000, label = "26", fontface = "bold",hjust = -0.2,vjust = -0.5, size = 3) +
  annotate("text", x = 27, y = 59000, label = "27", fontface = "bold",hjust = -0.2, size = 3) +
  annotate("segment", x = 1, xend = 2, y = cizgi1, yend = cizgi1, size = 0.5) +
  annotate("segment", x = 2, xend = 3, y = cizgi2, yend = cizgi2, size = 0.5) +
  annotate("segment", x = 3, xend = 4, y = cizgi3, yend = cizgi3, size = 0.5) +
  annotate("segment", x = 4, xend = 5, y = cizgi4, yend = cizgi4, size = 0.5) +
  annotate("segment", x = 5, xend = 6, y = cizgi5, yend = cizgi5, size = 0.5) +
  annotate("segment", x = 6, xend = 7, y = cizgi6, yend = cizgi6, size = 0.5) +
  annotate("segment", x = 7, xend = 8, y = cizgi7, yend = cizgi7, size = 0.5) +
  annotate("segment", x = 8, xend = 9, y = cizgi8, yend = cizgi8, size = 0.5) +
  annotate("segment", x = 9, xend = 10, y = cizgi9, yend = cizgi9, size = 0.5) +
  annotate("segment", x = 10, xend = 11, y = cizgi10, yend = cizgi10, size = 0.5) +
  annotate("segment", x = 11, xend = 12, y = cizgi11, yend = cizgi11, size = 0.5) +
  annotate("segment", x = 12, xend = 13, y = cizgi12, yend = cizgi12, size = 0.5) +
  annotate("segment", x = 13, xend = 14, y = cizgi13, yend = cizgi13, size = 0.5) +
  annotate("segment", x = 14, xend = 15, y = cizgi14, yend = cizgi14, size = 0.5) +
  annotate("segment", x = 15, xend = 16, y = cizgi15, yend = cizgi15, size = 0.5) +
  annotate("segment", x = 16, xend = 17, y = cizgi16, yend = cizgi16, size = 0.5) +
  annotate("segment", x = 17, xend = 18, y = cizgi17, yend = cizgi17, size = 0.5) +
  annotate("segment", x = 18, xend = 19, y = cizgi18, yend = cizgi18, size = 0.5) +
  annotate("segment", x = 19, xend = 20, y = cizgi19, yend = cizgi19, size = 0.5) +
  annotate("segment", x = 20, xend = 21, y = cizgi20, yend = cizgi20, size = 0.5) +
  annotate("segment", x = 21, xend = 22, y = cizgi21, yend = cizgi21, size = 0.5) +
  annotate("segment", x = 22, xend = 23, y = cizgi22, yend = cizgi22, size = 0.5) +
  annotate("segment", x = 23, xend = 24, y = cizgi23, yend = cizgi23, size = 0.5) +
  annotate("segment", x = 24, xend = 25, y = cizgi24, yend = cizgi24, size = 0.5) +
  annotate("segment", x = 25, xend = 26, y = cizgi25, yend = cizgi25, size = 0.5) +
  annotate("segment", x = 26, xend = 27, y = cizgi26, yend = cizgi26, size = 0.5) +
  annotate("segment", x = 27, xend = 28, y = cizgi27, yend = cizgi27, size = 0.5) +
  annotate("segment", x = 28, xend = 29, y = cizgi28, yend = cizgi28, size = 0.5) 
```

![İsci](https://github.com/samirnoff/Rbitirme/blob/master/Graphs/Bars/Isci.jpeg)

#### İstanbul Çocuk Hastanesinin Mesaisi

1924 - 1937 yılları arasında İstanbul Çocuk Hastanesi'nin tedavi sayılarını gösteren grafik

```R
library(ggplot2)
zaman <- rep(seq(1924,1937),2)
yatak <- c(1594,1818,1593,1439,1459,1821,1845,2029,2305,1257,3075,3142,3415,3239)
ayak <- c(NA,12913,14091,13738,14790,22984,19736,18145,20220,23101,22744,18706,22978,37103)
deger <- c(ayak,yatak)
grup <- factor(c(rep(c("Ayakta tedavi","Yatırılarak tedavi"), each=length(yatak))),
               levels=c("Yatırılarak tedavi","Ayakta tedavi"))
cocuk <- data.frame(zaman,deger, grup)

xcor <- zaman
ycor <- deger
annolabel <- c("","12.913","14.091","13.738","14.790","22.984","19.736","18.145","20.220","23.101","22.744","18.706","22.978","37.103",
                "1.594","1.818","1.593","1.439","1.459","1.821","1.845","2.029","2.305","1.257","3.075","3.142","3.415","3.239")

ggplot(cocuk, aes(x = zaman, y = deger, fill = grup, color = grup)) +
  geom_bar(stat = "identity", position = "identity", color = "black", size = 1.25, width = 0.70) +
  scale_fill_manual(values=c("black","white")) +
  theme_classic() +
  labs(title = "İSTANBUL ÇOCUK HASTANESİNİN MESAİSİ",
       subtitle = "1924 \u2013 1937\n\n\n\n\n\n") +
  theme(plot.title = element_text(hjust = 0.5),
        plot.subtitle = element_text(hjust = 0.5, size = 13.5)) +
  theme(plot.margin = unit(c(2,1,1,1), "lines")) +  
  theme(axis.line.y = element_blank(),
        axis.text.y = element_blank(), 
        axis.ticks = element_blank(), 
        axis.title = element_blank(),
        axis.text = element_text(color = "black", size = 12, hjust = 0.57),
        axis.line.x = element_line(colour = "black", size = 1.2)) +
  theme(legend.title=element_blank(),
        legend.text = element_text(size=13,face = "bold.italic"),
        legend.position=c(0.15,1.25), 
        legend.justification=c(0,1), 
        legend.direction='vertical',
        legend.spacing.x = unit(0.15,"cm"),
        legend.key = element_rect(size = 3 ,fill = "white", colour = "white")) +
  guides(fill = guide_legend(keywidth = 0.6, keyheight=0.2, default.unit = "inch")) +
  annotate("text",x = xcor, y = ycor, label = annolabel, angle = 90, fontface = "italic",
           hjust = -0.1) +
  coord_cartesian(clip = 'off') +
  scale_y_continuous(expand = c(0,0)) +
  scale_x_continuous(breaks = seq(1924,1937))
```

![İstanbul Çocuk](https://github.com/samirnoff/Rbitirme/blob/master/Graphs/Bars/IstanbulCocuk.jpeg)

#### Merkez Hıfzıssıhha Müessesesi Serum ve Aşı İstihsal ve Sevkiyyatı Faaliyeti

1930 - 1937 yılları arasında günümüzün Refik Saydam Merkez Hıfzıssıhha Enstitüsü kurumunun serum ve aşı üretim ve ulaşım sonuçlarını gösteren grafik

```R
library(ggplot2)
zaman <- rep(c(1930:1937),4)
serum1 <- c(12,150,191,185,245,276,486,644)
serum2 <- c(3,144,163,184,202,246,264,537)
asi1 <- c(154,698,1849,2066,2029,2592,2447,4233)
asi2 <- c(120,493,1831,1933,1951,2404,2326,3965)
sevkedilen <- c(asi2,serum2) + 350
istihsalat <- c(asi1,serum1) + 350
deger <- c(sevkedilen,istihsalat) 
grup1 <- rep(c("Asi","Serum"), each = 8)
grup2 <- rep(c("sevkedilen","istihsalat"), each = 16)

merkez <- data.frame(zaman, deger, grup1, grup2)
xcor <- rep(c(1930:1937),2)
label1 <- c("","698","1.849","2.066","2.029","2.592","2.447","4.233",
            "154 - 12","150","191","185","245","276","486","644")
label2 <- c("","493","1.831","1.933","1.951","2.404","2.326","3.965",
            "3 - 120","144","163","184","202","246","264","537")
ek <- seq(0,7)
cizgi <- seq(0,600,40)
ggplot(merkez, aes(x=zaman,fill = grup1))+
  geom_bar(data = subset(merkez, grup2 == "istihsalat"),aes(y = -deger), position = "identity",
           stat = "identity", colour = "black", size = 1.1, width = 0.8) +
  geom_bar(data = subset(merkez, grup2 == "sevkedilen"),aes(y = deger), position = "identity",
           stat = "identity", colour = "black", size = 1.1, width = 0.8) +
  scale_fill_manual(values=c("white","black")) +
  coord_flip(clip = 'off')+
  scale_x_reverse(expand = c(0,0)) +
  theme_classic() +
  theme(plot.margin = unit(c(5,3,1,3), "lines")) +  
  labs(caption = "S     A     Y     I     S     I") +
  theme(plot.caption = element_text(size = 25, hjust = 0.5)) +
  theme(legend.position= "none") +
  theme(axis.line.y = element_blank(),
        axis.text.y = element_blank(), 
        axis.text.x = element_text(color = "black", size = 11, face = "bold", vjust = 1),
        axis.ticks.y = element_blank(),
        axis.title = element_blank(),
        axis.ticks.length.x = unit(.15,"cm"),
        axis.line.x = element_blank()) +
  annotate("text", x = 1927, y = 0, label = "T.C. \n MERKEZ HIFZISSIHHA MÜESSESESİ", size = 5, fontface = "bold") +
  annotate("text", x = 1927.7, y = 0, label = "Serum ve Aşı istihsal ve sevkiyyatı faaliyeti", size = 5, fontface = "italic") +
  annotate("text", x = 1928.2, y = 0, label = "1930 \u2013 1937", size = 5) +
  annotate("text", x = 1929.3, y = 0, label = "Yıllar", size = 5) +
  annotate("text", x = 1933.5, y = -4100, label = "İSTİHSALAT   (KİLO)", size = 6, angle = 45) +
  annotate("text", x = 1933.5, y = 4100, label = "SEVKEDİLEN   (KİLO)", size = 6, angle = -45) +
  annotate("text", x = 1929, y = -3850, label = "Serum", size = 4, fontface = "italic") +
  annotate("text", x = 1929, y = 4000, label = "Aşı", size = 4, fontface = "italic") +
  annotate("rect", xmin = 1928.9 , xmax = 1929.2 , ymin = 4200, ymax = 4600, size = 1, colour = "black", fill = "white") +
  annotate("rect", xmin = 1928.9 , xmax = 1929.2 , ymin = -4200, ymax = -4600, size = 1, colour = "black", fill = "black") +
  scale_y_continuous(breaks = c(-4850, -3350, -2350, -1350, -350, 350, 1350, 2350, 3350, 4350, 4850),
                     labels = c("4.500","3.000","2.000","1.000","0","0","1.000","2.000","3.000","","4.500"),
                     limits = c(-4850,4850), expand = c(0,0)) +
  annotate("rect", xmin = 1929.85 , xmax = 1930.2 , ymin = 400 , ymax = 630 , size = 1,  fill = "white") +
  annotate("rect", xmin = 1929.85 , xmax = 1930.2 , ymin = -400 , ymax = -630 , size = 1,  fill = "white") +
  annotate("text", x = xcor, y = -istihsalat , label = label1, size = 3.8, hjust = 1.1 , fontface = "bold.italic") +
  annotate("text", x = xcor, y = sevkedilen , label = label2, size = 3.8, hjust = -0.09, fontface = "bold.italic") +
  annotate("rect", ymin = -350, ymax = 350, xmin = 1929.7, xmax = 1937, fill = "white", colour = "black", size = 1) +
  annotate("segment", x = 1930.4, xend = 1931, y = -250 + cizgi, yend = -500 + cizgi, size = 0.5) +
  annotate("segment", x = 1931.4, xend = 1932, y = -250 + cizgi, yend = -500 + cizgi, size = 0.5) +
  annotate("segment", x = 1932.4, xend = 1933, y = -250 + cizgi, yend = -500 + cizgi, size = 0.5) +
  annotate("segment", x = 1933.4, xend = 1934, y = -250 + cizgi, yend = -500 + cizgi, size = 0.5) +
  annotate("segment", x = 1934.4, xend = 1935, y = -250 + cizgi, yend = -500 + cizgi, size = 0.5) +
  annotate("segment", x = 1935.4, xend = 1936, y = -250 + cizgi, yend = -500 + cizgi, size = 0.5) +
  annotate("segment", x = 1936.4, xend = 1937, y = -250 + cizgi, yend = -500 + cizgi, size = 0.5) +
  annotate("rect", ymin = -350, ymax = 350, xmin = 1929.6 + ek, xmax = 1930.41 + ek, fill = "white", colour = "black", size = 1) +
  annotate("text", x = c(1930:1937), y = 0, label = paste(c(1930:1937)), size = 5.5, fontface = "bold") +
  annotate("segment", x = 1937.7, xend = 1937.7, y = -4850, yend = -350, size = 1.5) +
  annotate("segment", x = 1937.7, xend = 1937.7, y = 350, yend = 4850, size = 1.5) +
  annotate("segment", x = 1937, xend = 1937.7, y = -350, yend = -350, size = 1) +
  annotate("segment", x = 1937, xend = 1937.7, y = 350, yend = 350, size = 1)
```

![Merkez](https://github.com/samirnoff/Rbitirme/blob/master/Graphs/Bars/Merkez.jpeg)

#### Numune Hastaneleri Mesaisi

1924 - 1937 tarihleri arasında numune hastanelerinin tedavi sayısını gösteren grafik

```R
library(ggplot2)
zaman <- rep(seq(1924,1937),2)
yatak <- c(3278,4791,4235,4537,4997,5466,5994,6004,5756,7151,10415,12018,16382,18014)
ayak <- c(NA,10651,15496,16050,22727,30712,36358,48448,56652,66822,100985,116123,193488,232407)
deger <- c(yatak,ayak)
grup <- factor(c(rep(c("Yatırılarak tedavi","Ayakta tedavi"), each = length(yatak))),
               levels = c("Yatırılarak tedavi","Ayakta tedavi"))

numune <- data.frame(zaman, deger, grup)

xcor1 <- seq(1924,1937) - 0.2
xcor2 <- seq(1924,1937) + 0.15
ycor1 <- yatak
ycor2 <- ayak
annolabel1 <- c("3.278","4.791","4.235","4.537","4.997","5.466","5.994","6.004","5.756","7.151","10 415","12.018","16.382","19.014")
annolabel2 <- c("","10.651","15.496","16.050","22.727","30.712","26.358","48 448","56.652","66.822","100.985","116.123","193.488","232.407")

ggplot(numune, aes(x = zaman, y = deger, fill = grup)) + 
  geom_bar(stat = "identity", position = position_dodge(), color = "black", size = 1.25, width = 0.70) +
  scale_fill_manual(values=c("black","white")) +
  theme_classic() +
  labs(title = "NÜMUNE HASTANELERİ MESAİSİ",
       subtitle = "1924 \u2013 1937\n\n") +
#  theme(plot.margin = unit(c(2,1,2,1), "lines")) + 
  theme(plot.title = element_text(hjust = 0.4),
        plot.subtitle = element_text(hjust = 0.4, size = 14.5)) +
  theme(axis.line.y = element_blank(),
        axis.text.y = element_blank(), 
        axis.ticks = element_blank(), 
        axis.title = element_blank(),
        axis.text.x = element_text(color = "black", size = 12, vjust = 0.5),
        axis.line.x = element_line(colour = "black", size = 1.2)) +
  theme(legend.title=element_blank(),
        legend.text = element_text(size=14,face = "bold.italic"),
        legend.position=c(0.05,1), 
        legend.justification=c(0,1), 
        legend.direction='vertical',
        legend.spacing.x = unit(0.15,"cm"),
        legend.box.spacing = unit(1,"cm"),
        legend.key = element_rect(fill = "white", colour = "white")) +
  guides(fill = guide_legend(keywidth = 0.5, keyheight=0.2, default.unit = "inch")) +
  coord_cartesian(clip = 'off') +
  annotate("text",x = xcor1, y = ycor1, label = annolabel1, angle = 90,
           size = 3.7, hjust = -0.1, fontface = "bold.italic") +
  annotate("text",x = xcor2, y = ycor2, label = annolabel2, angle = 90,
           size = 3.7, hjust = -0.1, fontface = "bold.italic") +
  scale_y_continuous(expand = c(0,0)) +
  scale_x_continuous(breaks = seq(1924,1937), expand = c(0,0.1))
```

![Numune](https://github.com/samirnoff/Rbitirme/blob/master/Graphs/Bars/Numune.jpeg)

#### Sıtma Mücadelesi Laboratuvar Mesaisi

1925 - 1937 yılları arasında sıtma mücadelesi kapsamındaki laboratuvar çalışmasını gösteren grafik

```R
library(ggplot2)
zaman <- rep(seq(1925,1937),2)
muayene <- c(16579,148264,212568,243296,354455,370073,530595,557081,547332,570575,594530,654668,734041)
musbet <- c(1434,14791,10190,9928,36186,45653,61241,72500,50609,48744,40842,62466,69850)
deger <- c(muayene,musbet)
grup <- factor(c(rep(c("Kan muayenesi sayısı","Müsbet kan           \" "), each = length(muayene))),
               levels = c("Kan muayenesi sayısı","Müsbet kan           \" "))
sitma <- data.frame(zaman,deger, grup)

xcor1 <- seq(1925,1937) - 0.2
xcor2 <- seq(1925,1937) + 0.2
xcor3 <- seq(1929,1937) - 0.2
ycor1 <- muayene
ycor2 <- musbet
ycor3 <- c(354455,370073,530595,557081,547332,570575,594530,654668,734041)
annolabel1 <- c("16.579","148.264","212 568","243.296","","","","","","","","","")
annolabel2 <- c("1.434","14.791","10.190","9.928","36.186","45.653","61.241","72.500","50.609","48.744","40.842","62.466","60.850")
annolabel3 <- c("354.455","370.073","530.595","557.081","547.332","570.575","594.530","654.668","734.041")

ggplot(sitma, aes(x = zaman, y = deger, fill = grup, color = grup)) +
  geom_bar(stat = "identity", position = position_dodge(), color = "black", size = 1.25, width = 0.70) +
  scale_fill_manual(values=c("white","black")) +
  theme_classic() +
  theme(plot.margin = unit(c(2,1,2,1), "lines")) +  
    theme(axis.line.y = element_blank(),
        axis.text.y = element_blank(), 
        axis.ticks = element_blank(), 
        axis.title = element_blank(),
        axis.text.x = element_text(color = "black", size = 22, hjust = 0.7, vjust = 0.5, face = "bold", angle = 89.99),
        axis.line.x = element_line(colour = "black", size = 1.2)) +
  theme(legend.title=element_blank(),
        legend.text = element_text(size=14,face = "bold.italic"),
        legend.position=c(0,0.85), 
        legend.justification=c(0,1), 
        legend.direction='vertical',
        legend.spacing.x = unit(0.15,"cm"),
        legend.box.spacing = unit(1,"cm"),
        legend.key = element_rect(fill = "white", colour = "white")) +
  guides(fill = guide_legend(keywidth = 0.6, keyheight=0.2, default.unit = "inch")) +
  annotate("text", x = 1928, y = 734040, label = "SITMA MÜCADELESİ", size = 6) +
  annotate("text", x = 1928, y = 700000, label = "Laboratuvar mesaisi", size = 7, fontface = "italic") +
  annotate("text", x = 1928, y = 665000, label = "1925 \u2013 1937", size = 7.5, fontface = "bold") +
  annotate("text",x = xcor1, y = ycor1, label = annolabel1, angle = 90, fontface = "bold.italic",
           hjust = -0.1) +
  annotate("text",x = xcor2, y = ycor2, label = annolabel2, angle = 90, fontface = "bold.italic",
           hjust = -0.1) +
  annotate("text",x = xcor3, y = ycor3, label = annolabel3, angle = 90, fontface = "bold.italic",
           hjust = 1.3) +
  coord_cartesian(clip = 'off') +
  scale_y_continuous(expand = c(0,0)) +
  scale_x_continuous(breaks = seq(1925,1937), expand = c(0,0.1))
```

![Sıtma Mücadele](https://github.com/samirnoff/Rbitirme/blob/master/Graphs/Bars/SitmaMucadelesi.jpeg)

#### Yurdun Muhtelif Bölgelerinde Yapılan Tifo Aşısı

1927 - 1937 yılları arasında yurtta yapılan tifo aşısı miktarlarını gösteren grafik

```R
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
  scale_fill_manual(values=c("black","white","white")) +
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
  theme (legend.position = "none") +
  theme(plot.margin = unit(c(5,1,1,1), "lines")) + 
  coord_cartesian(clip = 'off') +
  annotate("text", x = 1931, y = 500500, label = "Yurdun muhtelif bölgelerinde yapılan", size = 4) +
  annotate("text", x = 1931, y = 470000, label = ". Tifo aşısı", size = 6, fontface = "bold") +
  annotate("text", x = 1931, y = 440000, label = "1927 \u2013 1937", size = 3.7 , fontface = "bold") +
  scale_x_continuous(breaks = seq(1927,1937)) +
  scale_y_continuous(expand = c(0,0)) +
  annotate("rect", xmin = 1929.9 , xmax = 1930.2 , ymin = 380000, ymax = 395000, colour = "black", fill= "black", size = 1) +
  annotate("rect", xmin = 1929.9 , xmax = 1930.2 , ymin = 360000, ymax = 375000, colour = "black", fill= "white", size = 1) +
  annotate("rect", xmin = 1929.9 , xmax = 1930.2 , ymin = 340000, ymax = 355000, colour = "black", fill= "white", size = 1) +
  annotate("rect", xmin = 1930.25 , xmax = 1932 , ymin = 329000, ymax = 410000, fill= "white") +
  annotate(geom="text", x=1930.9 ,y=387500 ,label="Birinci   aşı", size= 3.7, fontface="italic") +
  annotate(geom="text", x=1930.9 ,y=367500 ,label="İkinci      \" ", size= 3.7, fontface="italic") +
  annotate(geom="text", x=1930.9 ,y=347500 ,label="Üçüncü   \" ", size= 3.7, fontface="italic") +
  annotate("segment", x = 1930 + cizgi, xend = 1930 + cizgi, y = 340000, yend = 355000, size = 1)
```

![Tifo Aşı](https://github.com/samirnoff/Rbitirme/blob/master/Graphs/Bars/TifoAsi.jpeg)

#### Trahom Mücadele Teşkilatı Hastane ve Dispanserler Faaliyeti

1925 - 1937 yılları arasında trahom hastalığına karşı hastane ve dispanserlerde yapılan tedavi sayısını gösteren grafik

```R
Sys.setlocale(locale = "Turkish")
library(ggplot2)
yatak <- c(64,298,581,312,312,425,1257,1644,2073,2215,2215,2332,2579)
tedavi <- c(99,642,909,646,702,2694,2418,4287,4212,4318,3719,4034,4916)
zaman <- rep(seq(1925,1937),2)
deger <- c(yatak,tedavi)  
grup <- factor(c(rep(c("Yatırılarak tedavi sayısı", "Yapılan ameliyat       \" "), each=length(yatak))),
               levels=c("Yatırılarak tedavi sayısı", "Yapılan ameliyat       \" "))
data <- data.frame("x"=zaman, "y"=deger, "grp"=grup) 
text <- element_text(face = "bold", color = "black", size = 12)
xcor <- rep(c(seq(1925,1937)),2)
ycor <- deger + 90
labell <- c("64","298","581","312","312","425"," 1.257"," 1.644","  2.073","  2.215","  2.215","  2.332","  2.579",
            "       \u201399","642","909","646","702","  2.694","  2.418","","","","","","")
labell2 <- c("","","","","","","","","","","","","","","","","","","","","4.287","4.212","4.318","3.719","4.034","4.916")

ggplot(data=data,aes(x=zaman, y=deger, fill=grup, color=grup, alpha=grup)) +
  labs(title = "TRAHOM MÜCADELE TEŞKİLÂTI",
       subtitle = "Hastane ve Dispanserler Faaliyeti\n")+
  geom_bar(stat="identity",position ="identity",color="black", size=1.25, width=0.65) +
  theme_classic()+
  scale_fill_manual(values=c("black","white")) +
  scale_alpha_manual(values=c(1, 0))+
  theme(axis.line.y=element_blank(), axis.text.y = element_blank(), axis.text.x = element_blank(),
        axis.ticks = element_blank(), axis.title = element_blank(),
        axis.line.x = element_line(colour = "black", size = 1.2))+
  theme(title = text, plot.margin = margin(0.5, 0.5, 0.5, 0.5, "cm"))+
  theme(plot.title=element_text(vjust=-15, hjust=0.1,family="sans"),
        plot.subtitle=element_text(size= 15, vjust=-15, hjust=0.1,family="sans",face = "italic"))+
  theme(legend.title=element_blank(),legend.text = element_text(size=12,face = "bold.italic"),legend.position=c(0,0.82), 
        legend.justification=c(0,1), legend.direction='vertical',legend.spacing.x = unit(0.15,"cm"),
        legend.key = element_rect(size = 5, fill = "white", colour = "white")) +
  annotate("rect",xmin=1924.8,xmax=1925.2,ymin = 90,ymax=105,color="white",fill="white") +
  annotate("text", x = xcor, y = ycor, label = labell, 
           color = "black", angle = 90, hjust = 0.4, size=4, fontface = "bold.italic")+
  annotate("text", x = xcor, y = ycor, label = labell2, 
           color = "black", angle = 90, hjust = 1.8, size=4, fontface = "bold.italic")+
  scale_x_continuous(breaks=c(1925,1926,1927,1928,1929,1930,1931,1932,1933,1934,1935,1936,1937))+ 
  scale_y_continuous(expand = c(0,0))+
  annotate("text",x=1927.5,y=4650,label="1925 \u2013 1937",fontface="bold", size=5.5) +
  guides(fill=guide_legend(keywidth=0.78,keyheight=0.30,default.unit="inch"))
```

![Trahom Bar](https://github.com/samirnoff/Rbitirme/blob/master/Graphs/Bars/TrahomBar.jpeg)

#### Zonguldak Hastanesinin Faaliyeti

1924 - 1937 yılları arasında Zonguldak Hastanesi'nin yaptığı tedavi sayısını gösteren grafik

```R
library(ggplot2)
yatak1 <- c(598,701,523,376,568,687,774,777,815,NA,NA,NA,NA,NA)
yatak2 <- c(NA,NA,NA,NA,NA,NA,NA,NA,NA,1031,1223,1374,1528,1733)
ayak1 <- c(NA,67,69,173,272,291,183,161,725,NA,NA,NA,NA,NA)
ayak2 <- c(NA,NA,NA,NA,NA,NA,NA,NA,NA,1531,3203,2443,3661,4432)
zaman <- seq(1924,1937)
deger <- c(1031,1223,1374,1528,1733,1531,3203,2443,3661,4432) 
xcor <- rep(seq(1933,1937),2)
ycor <- deger
label1 <- c("1.031","1.223","1.374","1.528","1.733",
            "1.531","3.203","2.443","3.661","4 432")
zonguldak <- data.frame(zaman, ayak1, ayak2, yatak1, yatak2)
ggplot(zonguldak, aes(x = zaman)) +
  geom_bar(aes(y=yatak1, fill = "black"), stat="identity", position = "identity", color = "black" ,size = 1.25,  width = 0.8) +
  geom_bar(aes(y=ayak1, fill = "white"), stat="identity", position = "identity", color = "black", size = 1.25,   width = 0.8) +
  geom_bar(aes(y=ayak2, fill = "white"), stat="identity", position = "identity", color = "black", size = 1.25,   width = 0.8) +
  geom_bar(aes(y=yatak2, fill = "black"), stat="identity", position = "identity", color = "black", size = 1.25, width = 0.8) +
  geom_text(aes(y=yatak1), label = yatak1, angle = 90, hjust = -0.2, fontface = "bold.italic") +
  geom_text(aes(y=ayak1), label = ayak1, color = "white", vjust = -0.15, size= 3.7, fontface = "bold.italic") +
  theme_classic() +
  ggtitle("ZONGULDAK  HASTANESİNİN  FAALİYETİ \n        1924 \u2013 1937") +
  theme(plot.title = element_text(vjust=0.95, hjust=0.3)) + 
  scale_y_continuous(expand = c(0,1)) +
  scale_fill_manual(name = "",
                    values=c("black", "white"),
                    labels=c("Yatýrýlarak tedavi sayýsý","Ayakta         \"           \" "))+
  theme(axis.line.y = element_blank(),
        axis.text.y = element_blank(), 
        axis.ticks = element_blank(), 
        axis.title = element_blank(),
        axis.text = element_text(color = "black", size = 12, hjust = 0.57),
        axis.line.x = element_line(colour = "black", size = 1.2)) +
  theme(plot.margin = unit(c(2,1,1,1), "lines")) +
  scale_x_continuous(breaks = seq(1924,1937)) +
  annotate("text", x = xcor, y = ycor, label = label1, 
           color = "black", angle = 90, hjust = -0.1, size=4, fontface = "bold.italic") +
  guides(fill=guide_legend(override.aes = list(size = 1.2), keywidth=0.78, keyheight=0.30,default.unit="inch")) +
  theme(legend.title=element_blank(),legend.text = element_text(size=12,face = "bold.italic"),legend.position=c(0,0.90), 
        legend.justification=c(0,1), legend.direction='vertical',legend.spacing.x = unit(0.15,"cm"),
        legend.key = element_rect(size = 5, fill = "white", color = "white")) +
  coord_cartesian(clip = 'off')
```

![Zonguldak Hastane](https://github.com/samirnoff/Rbitirme/blob/master/Graphs/Bars/ZonguldakHastane.jpeg)

#### Doğum ve Çocuk Bakım Evleri Faaliyeti

1926 - 1937 tarihleri arasında doğum ve çocuk bakım evlerinin tedavi sayısını gösteren grafik

```R
library(ggplot2)
cocukyat <- c(51,68,59,86,88,290,292,323,454,519,749,1013) + 700
cocukayak <- c(193.0,295.7,286.4,470.7,767.1,953.8,1181.6,1246.1,1420.6,1697.1,2055.6,2227.5) + 700
kadinyat <- c(161,366,460,605,1161,1944,2370,2720,3236,3725,4703,4971) + 700
kadinayak <- c(639.7,834.5,647.1,812.4,1436.3,2217.7,2216.8,2686.6,3374.3,3424.2,3514.0,4329.4) + 700
yatak <- c(cocukyat, kadinyat)
ayak <- c(cocukayak,kadinayak)
deger <- c(yatak,ayak)
tarih <- rep(c(1926:1937),4)
grup1 <- rep(c("Çocuk\n","Kadın"), each = length(cocukyat))
grup2 <- rep(c("yatak","ayak"), each = length(yatak))

bakimevi <- data.frame(tarih, deger, grup1, grup2) 

ek <- seq(0,11)

label1 <- c("1 930","2 957","2 864","4 707","1 671","9 538","11 816","12 461","14 206","16.971","20.556","22 275")
label2 <- c("6 397","8 345","6 471","8 124","14 363","22.177","22 168","22.866","33 743","34.242","35.140","43.294")
label3 <- c("51","68","59","86","88","290","292","323","454","519","749","1 013")
label4 <- c("161","366","460","605","1.161","944","2 370","2 720","3 236","3.725","4.703","4 971")
  
ggplot(bakimevi, aes(x = tarih, fill = grup1)) +
  geom_bar(data = subset(bakimevi, grup2 == "ayak"), aes(y = deger), 
           stat = "identity", position = position_dodge(width = -0.7), color = "black", size = 1.2, width = 0.7) +
  geom_bar(data = subset(bakimevi, grup2 == "yatak"), aes(y = -deger), 
           stat = "identity", position = position_dodge(width = -0.7), color = "black", size = 1.2, width = 0.7) +
  theme_classic() +
  labs(title = "DOĞUM  VE  ÇOCUK  BAKIM  EVLERİ  FAALİYETİ\n1926 \U2013 1937\n") +
  theme(plot.margin = unit(c(2,3,4,3), "lines")) + 
  scale_fill_manual(values = c("black","white")) +
  scale_y_continuous(breaks = c(-5700, -4700, -3700, -2700, -1700, -700, 700, 1700, 2700, 3700, 4700, 5700),
                     labels = c("5.000","4","3","2","1","0","0","10","20","30","40","50.000"),
                     limits = c(-5700,5700),
                     expand = c(0,0)) +
  coord_flip(clip = 'off') +
  scale_x_reverse(expand = c(0,0)) +
  theme(legend.title=element_blank(),
        legend.text = element_text(size = 13.5, face = "italic"),
        legend.position = c(-0.04,0.9), 
        legend.justification = c(0,1), 
        legend.spacing.x = unit(0.2,"cm"),
        legend.direction = 'vertical',
        legend.key = element_rect(size = 12, fill = "white", colour = "white"),
        legend.key.width = unit(1.5,'lines')) +
  theme(plot.title = element_text(hjust = 0.5, size = 16),
        axis.title = element_blank(),
        axis.line.y = element_blank(),
        axis.line.x = element_line(size = 1.2),
        axis.ticks.y = element_blank(),
        axis.ticks.x = element_line(size = 1.2),
        axis.ticks.length.x = unit(.15,"cm"),
        axis.text.y = element_blank(),
        axis.text.x = element_text(color = "black", size = 15, face = "bold", vjust = 1)) +
  annotate("rect", ymin = -700, ymax = 700, xmin = 1925.7, xmax = 1937.6, fill = "black") +
  annotate("rect", ymin = -630, ymax = 630, xmin = 1925.72 + ek, xmax = 1926.30 + ek, fill = "white") +
  annotate("text", x = c(1926:1937), y = 0, label = paste(c(1926:1937)), size = 6, fontface = "bold") +
  annotate("text", x = c(1926:1937), y = cocukayak, label = label1, hjust = -0.1, vjust = -0.5, fontface = "bold.italic") +
  annotate("text", x = c(1926:1937), y = kadinayak, label = label2, hjust = -0.1, vjust = 1, fontface = "bold.italic") +
  annotate("text", x = c(1926:1937), y = -cocukyat, label = label3, hjust = 1.2, vjust = -0.5, fontface = "bold.italic") +
  annotate("text", x = c(1926:1937), y = -kadinyat, label = label4, hjust = 1.2, vjust = 1, fontface = "bold.italic") +
  annotate("text", x = 1925.3, y = 0, label = "YILLAR",fontface = "bold.italic") +
  annotate("text", x = 1932, y = -4700, label = "YATIRILARAK  TEDAVİ", angle = 50, size = 6, fontface = "italic") +
  annotate("text", x = 1932, y = 4700, label = "AYAKTA     TEDAVİ", angle = -60, size = 6, fontface = "italic") +
  annotate("text", x = 1937, y = -4100, label = "B  I  N  L  E  R", vjust = 4.7, size = 5, fontface = "italic") +
  annotate("text", x = 1937, y = 2700, label = "O N   B  İ  N  L  E  R", vjust = 4.7, size = 5, fontface = "italic")
```

![Bakım Evi](https://github.com/samirnoff/Rbitirme/blob/master/Graphs/Bars/bakimevi.jpeg)
