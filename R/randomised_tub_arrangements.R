# randomised tub arrangements
# copyright 2022 - Martin J Lambert

set.seed(27091983)

## week 1 -----
# glasshouse 2
(w1_2 <- sample(1:24))
# glasshouse 3
(w1_3 <- sample(1:24))

## week 4 -----
# glasshouse 2
(w4_2 <- sample(1:24))
# glasshouse 3
(w4_3 <- sample(1:24))

## week 7 -----
# glasshouse 2
(w7_2 <- sample(1:24))
# glasshouse 3
(w7_3 <- sample(1:24))

## week 10 -----
# glasshouse 2
(w10_2 <- sample(1:24))
# glasshouse 3
(w10_3 <- sample(1:24))

## week 13 -----
# glasshouse 2
(w13_2 <- sample(1:24))
# glasshouse 3
(w13_3 <- sample(1:24))

#####

# create data frame for printing
arrangements <- data.frame(w1_2, w1_3, w4_2, w4_3, w7_2, w7_3, w10_2, w10_3, w13_2, w13_3)
# write to .csv for printing
write.csv(arrangements, "data/layouts.csv", row.names = FALSE)
