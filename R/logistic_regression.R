#' Perform Logistic Regression
#'
#' This function performs logistic regression.
#'
#' @param X Matrix of predictors/independent variables.
#' @param y Response variable (binary).
#' @return List containing coefficients, fitted values, and model summary.
#' @export
logistic_regression <- function(X, y) {
  fit <- glm(y ~ X, family = binomial(link = "logit"))
  coefficients <- coef(fit)
  fitted_values <- fitted(fit)
  summary <- summary(fit)

  result <- list(coefficients = coefficients,
                 fitted_values = fitted_values,
                 summary = summary)
  return(result)
}
