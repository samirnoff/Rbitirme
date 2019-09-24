library(ggplot2);
ggplot(KromCevheri, aes(tarih,miktar)) + geom_line(size=3) + 
  labs(caption="Üç sıfır ilavesile") +
  theme_bw() +
  theme(axis.title = element_blank()) +
  theme(axis.text.x = element_text(angle = 90, face = "bold")) +
  theme(plot.caption = element_text(hjust=0, face="bold")) +
  scale_x_continuous(
    limits = c(1923,1937),
    breaks = c(1923,1924,1925,1926,1927,1928,1929,1930,1931,1932,1933,1934,1935,1936,1937),
    label = c("1923","24","25","26","27","28","29","1930","31","32","33","34","35","36","1937")
    )
