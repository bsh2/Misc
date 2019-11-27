# Changing Gamma
w_t <- seq(0,30, by = 0.2)
k <- 10
delta <- 1
gamma1 <- 5
gamma2 <- 1
gamma3 <- 0.3

hill_gamma_1 <- k * ((w_t^(gamma1))/(delta^(gamma1)+w_t^(gamma1)))
hill_gamma_2 <- k * ((w_t^(gamma2))/(delta^(gamma2)+w_t^(gamma2)))
hill_gamma_3 <- k * ((w_t^(gamma3))/(delta^(gamma3)+w_t^(gamma3)))

plot(w_t, hill_gamma_1, type = "l", main = "Hill Function", 
     xlab = "Training Load - w(t)", ylab = "Hill(w(t))")     
lines(w_t, hill_gamma_2, col = "red")    
lines(w_t, hill_gamma_3, col = "blue")

# Changing Delta
w_t <- seq(0,30, by = 0.2)
k <- 10
gamma <- 1
delta1 <- 5
delta2 <- 1
delta3 <- 0.1

hill_delta_1 <- k * ((w_t^(gamma))/(delta1^(gamma)+w_t^(gamma)))
hill_delta_2 <- k * ((w_t^(gamma))/(delta2^(gamma)+w_t^(gamma)))
hill_delta_3 <- k * ((w_t^(gamma))/(delta3^(gamma)+w_t^(gamma)))

plot(w_t, hill_delta_1, type = "l", ylim = c(0,12))     
lines(w_t, hill_delta_2, col = "red")    
lines(w_t, hill_delta_3, col = "blue")

