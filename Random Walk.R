rm(list=ls())
set.seed(128)
### Random Walk
X <- 0
psi <- 1

###AR(1) if 0 < phi < 1
### Number of Time Steps
T <- 512
for(t in 2:T){
  ### Random Gaussian (white) Noise
  eps <- rnorm(1, 0, 1)
  ### Model
  X[t] <- psi*X[t-1] + eps
}
plot(1:T, X, type="l", lty=1, lwd=2, xlab="Time", ylab="Step", main="Random Walk", col=rgb(0,128,128, maxColorValue = 255))
abline(h=0, lty=3, col=2, lwd=0.8)

### Autocorrelation Function
rho <- acf(X)
plot(rho, type="h", col="red", xlab="Lag Value", ylab="Autocorrelation")

