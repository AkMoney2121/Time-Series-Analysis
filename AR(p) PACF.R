rm(list=ls())
set.seed(1024)


### AR(2) Model
N<-256
y<-arima.sim(n=N, model=list(ar=c(0.48, -0.27)))
plot(y, type ="l", main="AR(2) Series", xlab="Time", ylab="Amplitude", lty=1, lwd=1.28)
abline(h=0, lwd=2, col="tomato")
rho <- acf(y, col=4, lwd=2, main=" AR(2) ACF")

## Using ACF: Estimate for psi_1 is: 0.466
## Note: PACF: Partial Autocorrelation Function

rhop <- pacf(y, col=4, lwd=2, main="AR(2) PACF")


### AR(3) Model
N<-256
y<-arima.sim(n=N, model=list(ar=c(0.48, -0.27, 0.1)))
plot(y, type ="l", main="AR(3) Series", xlab="Time", ylab="Amplitude", lty=1, lwd=1.28)
abline(h=0, lwd=2, col="tomato")
rho <- acf(y, col=4, lwd=2, main="AR(3) ACF")

## Using ACF: Estimate for psi_1 is: 0.466
## Note: PACF: Partial Autocorrelation Function

rhop <- pacf(y, col=4, lwd=2, main="AR(3) PACF")



