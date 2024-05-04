rm(list = ls())
set.seed(10378)

### Example: Observed series from AR(2), resulted in 
### r_1 = 0.64, r_2 = -0.16


rho.hat <- matrix(c(0.64, -0.16), nrow = 2, ncol = 1, byrow = T)
P.two <- matrix(c(1, 0.64, 0.64, 1), nrow = 2, ncol = 2, byrow = T)

### Solve(P.two, rho.hat)
phi.hat <- solve(P.two, rho.hat)

### Did it come from a stationary series??
### Fitted AR(2) model: X_t = 1.26X_(t-1) - 0.96X_(t-2)
N <- 128
X <- arima.sim(n = N, list(ar = c(1.26, -0.96)))
plot(1:N, X, type = "l", col = 4)

### ACF only works for AR(1). PACF for AR(2)
### First two lines of PACF graph are outside bounds => AR(2) Model
acf(X, col = 2)
pacf(X, col = 4)

### 1.26 is outside unit circle, but -0.96 is inside the unit circle
