rm(list=ls())

### Simulate ###
set.seed(256)
x <- arima.sim(n=256, model=list(ar=c(-0.64), ma=c(-0.32)))
plot(x, type="l", lty=3)

## Fit Model
fit.x <- arima(x, order=c(1,0,1), include.mean=F)

## Fitted Series
x.hat <- x[1]
eps <- 0
for(k in 2:(length(x)-1)){
  x.hat[k+1] <- (-0.73)*x[k] + (-0.18)*eps[k]
  eps[k+1] <- x[k+1] - x.hat[k+1]
}

lines(x.hat, col=2)