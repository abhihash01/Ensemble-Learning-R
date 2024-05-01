#' Perform bagging for a given regression model
#'
#' @param model A character string specifying the regression model to use
#' @param X The matrix of predictors
#' @param y The response variable
#' @param R Number of bagging iterations
#' @param additional_args Additional arguments to pass to the regression model function
#' @return A vector of averaged predicted values
bagging <- function(model, X, y, R, ...) {
  n <- nrow(X)
  predictions <- matrix(0, nrow = n, ncol = R)

  for (i in 1:R) {
    # Sample with replacement
    indices <- sample(1:n, n, replace = TRUE)
    X_sampled <- X[indices, ]
    y_sampled <- y[indices]

    # Fit model on sampled data
    fitted_model <- switch(
      model,
      "linear_regression" = linear_regression,
      "logistic_regression" = logistic_regression,
      "ridge_regression" = ridge_regression,
      "lasso_regression" = lasso_regression,
      "random_forest_regression" = random_forest_regression,
      "xgboost_regression" = xgboost_regression,
      "svm_regression" = svm_regression,
      error = stop("Invalid model specified")
    )(X_sampled, y_sampled, ...)

    # Make predictions
    predictions[, i] <- predict(fitted_model, X)
  }

  # Average predictions
  averaged_predictions <- rowMeans(predictions)
  return(averaged_predictions)
}
