library(ggplot2);
ggplot(KromCevheri, aes(tarih,miktar)) + geom_line(size=3) + 
  theme(axis.title = element_blank()) +
  labs(title="KROM CEVHERÝ ÝSTÝHSÂLÝMÝZ",
       subtitle="TON",
       caption="Üç sýfýr ilavesile") +
  theme(plot.title = element_text(hjust = 0.5, face="italic")) +
  theme(plot.caption = element_text(hjust=0, face="italic")) +
  theme(axis.text.x = element_text(angle = 90))
