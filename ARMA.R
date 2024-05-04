rm(list=ls())
set.seed(1024)
### AR(2) Model
N<-256
y<-arima.sim(list(ar=c(0.80,-0.29)), N)
plot(y, type ="l", main="AR(2) Series", xlab="Time", ylab="Amplitude", lty=1, lwd=1.28)
acf(y, col=4, lwd=2)

### MA(2) Model
y<-arima.sim(list(ma=c(0.80,-0.29)), N)
plot(y, type ="l", main="MA(2) Series", xlab="Time", ylab="Amplitude", lty=1, lwd=1.28, col=2)
acf(y, col=4, lwd=2)

## ARMA (2,2) Model
y<-arima.sim(list(ar=c(0.12, -0.08), ma=c(0.80,-0.29)), N)
plot(y, type ="l", main="ARMA(2,2) Series", xlab="Time", ylab="Amplitude", lty=1, lwd=1.28, col=3)
acf(y, col=4, lwd=2)

## ARIMA (2,2) Model
y<-arima.sim(list(ar=c(0.12, -0.08), ma=c(0.80,-0.29), order=c(2,1,2)), N)
plot(y, type ="l", main="ARIMA(2,1,2) Series", xlab="Time", ylab="Amplitude", lty=1, lwd=1.28, col=3)
acf(y, col="brown", lwd=2)