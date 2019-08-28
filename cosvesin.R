x <- seq(-pi,pi,0.05)
plot(x,cos(x),type="l",col="red")
par(new=TRUE)
plot( x, sin(x), type="l", col="green" )
