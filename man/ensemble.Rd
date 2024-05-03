\name{ensemble_model}
\alias{ensemble_model}
\title{Ensemble Model}
\usage{
  ensemble_model(models, types, params, X, y)
}
\arguments{
  \item{models}{A list of model names.}

  \item{types}{A list of model types corresponding to each model.}

  \item{params}{A list of parameters corresponding to each model.}

  \item{X}{The feature matrix.}

  \item{y}{The target variable.}
}
\description{
  Fits multiple models on the same dataset and combines their predictions into a single value using averaging.
}
\examples{
ensemble_model(c("linear_regression", "random_forest_regression"),
               c("regression", "regression"),
               list(list(), list(ntree = 500)),
               X_train, y_train)
}
