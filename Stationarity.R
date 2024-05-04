rm(list = ls())

## Simulate Series
set.seed(128)
X <- arima.sim(n=117, model = list(ar=c(0.81)))
plot(X, type ="l", col="royalblue", main="AR(1) Series", xlab ="Time", ylab ="Amplitude")
abline(h=0, col="tomato")
rho <- acf(X)
rho <- round(rho$acf, 4)

## X_t: 2:117 X_(t-1): 1:116
X.t <- X[2:117];

## h=1
X.t.1 <- X[1:116]

## Correlation between 2 values
rho.1 <- cor(X.t, X.t.1)
print(paste0("Correlation (h=1):", round(rho.1, 4)
             )
      )

## p_2: Autocorrelation Matrix
p2 <- matrix(c(1,rho[2],rho[2],1), nrow = 2, ncol = 2, byrow = T)
det.p2 <- det(p2)
print(paste0("Determinant of p2:", round(det(p2), 4)
             )
      )

## Invert Matrix
p2.inv <- solve(p2)

###### Invertible => Stationary Series

## Eigenvalues
eig.p2 <- eigen(p2)
print(eig.p2)

###### Eigenvalues are positive => Stationary Series












