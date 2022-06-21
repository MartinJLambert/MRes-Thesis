# randomised tub labels
# copyright 2022 - Martin J Lambert

set.seed(27091983)

# harvest: 30%, 60%, 90%            levels = 3
# light: natural, artificial        levels = 2
# fertiliser: refresh, replace      levels = 2

# sample size (n) and total samples (N)
n = 4
N <- 3 * 2 * 2 * n

# randomise tubs
N.sample <- sample(1:N)

# assign light treatment
lN <- paste0(N.sample[1:24], "-N")
lA <- paste0(N.sample[25:48], "-A")
light <- c(rep("N", 24), rep("A", 24))

# assign harvest treatment
lN.30 <- paste0(lN[1:8], "-30")
lN.60 <- paste0(lN[9:16], "-60")
lN.90 <- paste0(lN[17:24], "-90")

lA.30 <- paste0(lA[1:8], "-30")
lA.60 <- paste0(lA[9:16], "-60")
lA.90 <- paste0(lA[17:24], "-90")
harvest <- rep(c(rep("30", 8), rep("60", 8), rep("90", 8)), 2)

# assign fertiliser treatment
lN.30.f <- paste0(lN.30[1:4], "-F")
lN.30.r <- paste0(lN.30[5:8], "-R")

lN.60.f <- paste0(lN.60[1:4], "-F")
lN.60.r <- paste0(lN.60[5:8], "-R")

lN.90.f <- paste0(lN.90[1:4], "-F")
lN.90.r <- paste0(lN.90[5:8], "-R")

lA.30.f <- paste0(lA.30[1:4], "-F")
lA.30.r <- paste0(lA.30[5:8], "-R")

lA.60.f <- paste0(lA.60[1:4], "-F")
lA.60.r <- paste0(lA.60[5:8], "-R")

lA.90.f <- paste0(lA.90[1:4], "-F")
lA.90.r <- paste0(lA.90[5:8], "-R")

fert <- rep(c(rep("F", 4), rep("R", 4)), 6)

# combine as list
tub.labels <- c(lN.30.f, lN.30.r, lN.60.f, lN.60.r, lN.90.f, lN.90.r, lA.30.f, lA.30.r, lA.60.f, lA.60.r, lA.90.f, lA.90.r)
# add final numbers for randomised placement within each glasshouse
tub.labels <- paste0(tub.labels, ":", rep(1:24, 2))

# create data frame
labels.df <- data.frame(replicate = rep(1:4, 12), tub = N.sample, light = light, harvest = harvest, fert = fert, label = tub.labels)
# sort numerically
labels.df <- labels.df[order(labels.df$tub), ]

# export data frame to .csv
write.csv(labels.df, "data/labels.csv", row.names = FALSE)

