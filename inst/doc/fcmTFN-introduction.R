## ----setup, include=FALSE-----------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

library(fcmfd)

set.seed(123)

## -----------------------------------------------------------------------------
data(sim_likert7)

head(sim_likert7)

## -----------------------------------------------------------------------------
result <- fcmTFN(
  data = sim_likert7,
  option = "B",
  k_values = 2:6
)

summary(result)

## -----------------------------------------------------------------------------
clusters <- cluster_assignment(result)

table(clusters)

## -----------------------------------------------------------------------------
prototype_matrix(result)

## -----------------------------------------------------------------------------
plot_xb(result)

