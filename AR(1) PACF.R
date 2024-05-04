rm(list=ls())
set.seed(1024)
### AR(1) Model
N<-256
y<-arima.sim(n=N, model=list(ar=c(0.48)))
plot(y, type ="l", main="AR(1) Series", xlab="Time", ylab="Amplitude", lty=1, lwd=1.28)
abline(h=0, lwd=2, col="tomato")
rho <- acf(y, col=4, lwd=2, main="ACF")

## Using ACF: Estimate for psi_1 is: 0.466
## Note: PACF: Partial Autocorrelation Function

rhop <- pacf(y, col=4, lwd=2, main="PACF")