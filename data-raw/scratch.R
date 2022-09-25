# Set parameters
m <- 10
set.seed(1252)

# Create placeholder data
w_unscaled <- runif(m)

w <- w_unscaled / sum(w_unscaled)

g_unscaled <- matrix(runif(m ^ 2), nrow = m)

for (i in 1:m) {
	g_unscaled[i, i] <- 0
}

g <- t(t(g_unscaled) / rowSums(t(g_unscaled)))

colSums(g) # Should all be 1

ps_m <- powerset(1:m) # Original power set function includes null set

ps_m_named <- setNames(ps_m, lapply(ps_m, paste, collapse = "_"))

h <- round(runif(m))

ps_m[which(as.logical(h))]
ps_m[2]

