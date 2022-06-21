#####
# R Analysis
# Martin J Lambert
# MRes Thesis - Azolla filiculoides Growth Experiment
#####

### required packages and libraries ----
packages <- c("tidyverse", "car", "knitr") # list of required packages

for(i in packages) {
  if(i %in% rownames(installed.packages()) == FALSE) { # check if package already exists
    install.packages(i) # installs if missing
  }
  library(i, character.only = TRUE) # loads library
}

knitr::write_bib(packages, "../LaTeX/ref/r_packages.bib") # overwrites citations for used packages
#----

# data import ----
df <- read.csv("data/data.csv")
str(df) # check structure
df$replicate <- as.factor(df$replicate)
df$tub <- as.factor(df$tub)
df$light <- as.factor(df$light)
df$harvest <- as.factor(df$harvest)
df$fert <- as.factor(df$fert)
str(df) # confirm factors


# confirm assumptions ----


# create model ----


# post hoc ----


# graphing ----

