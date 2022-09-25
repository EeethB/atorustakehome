g <- matrix(c(0,0,1,0,
							0,0,0,1,
							0,1,0,0,
							1,0,0,0), nrow = 4,byrow=TRUE)
## Choose weights
w <- c(.5,.5,0,0)

ps <- powerset(1:length(w))

ps_indices <- lapply(ps, function(x, y) as.integer(y %in% x), 1:length(w))

ps_matrix <- do.call(rbind, ps_indices)
