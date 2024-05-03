library(testthat)
library(simpleEnsembleGroup16)

# Create test data
set.seed(123)
X <- matrix(rnorm(100), ncol = 2)
y <- rnorm(50)

# Define mock models
mock_linear_regression <- function(X, y, ...) {
  return(rep(1, nrow(X)))
}

mock_random_forest_regression <- function(X, y, ntree = 500) {
  return(rep(2, nrow(X)))
}

# Test ensemble_model function
test_that("ensemble_model function combines predictions correctly", {
  predictions <- ensemble_model(c("elastic_net", "random_forest_regression"),
                                c("regression", "regression"),
                                list(list(nfolds = 5), list(ntree = 500)),
                                X,
                                y)
  expect_is(predictions, "numeric")
  expect_length(predictions, nrow(X))
})
