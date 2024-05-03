    simpleEnsembleGroup16 // Pandoc 2.9 adds attributes on both header and div. We remove the former (to // be compatible with the behavior of Pandoc < 2.8). document.addEventListener('DOMContentLoaded', function(e) { var hs = document.querySelectorAll("div.section\[class\*='level'\] > :first-child"); var i, h, a; for (i = 0; i < hs.length; i++) { h = hs\[i\]; if (!/^h\[1-6\]$/i.test(h.tagName)) continue; // it should be a header h1-h6 a = h.attributes; while (a.length > 0) h.removeAttribute(a\[0\].name); } }); code{white-space: pre-wrap;} span.smallcaps{font-variant: small-caps;} span.underline{text-decoration: underline;} div.column{display: inline-block; vertical-align: top; width: 50%;} div.hanging-indent{margin-left: 1.5em; text-indent: -1.5em;} ul.task-list{list-style: none;} code { white-space: pre; } .sourceCode { overflow: visible; } pre > code.sourceCode { white-space: pre; position: relative; } pre > code.sourceCode > span { display: inline-block; line-height: 1.25; } pre > code.sourceCode > span:empty { height: 1.2em; } .sourceCode { overflow: visible; } code.sourceCode > span { color: inherit; text-decoration: inherit; } div.sourceCode { margin: 1em 0; } pre.sourceCode { margin: 0; } @media screen { div.sourceCode { overflow: auto; } } @media print { pre > code.sourceCode { white-space: pre-wrap; } pre > code.sourceCode > span { text-indent: -5em; padding-left: 5em; } } pre.numberSource code { counter-reset: source-line 0; } pre.numberSource code > span { position: relative; left: -4em; counter-increment: source-line; } pre.numberSource code > span > a:first-child::before { content: counter(source-line); position: relative; left: -1em; text-align: right; vertical-align: baseline; border: none; display: inline-block; -webkit-touch-callout: none; -webkit-user-select: none; -khtml-user-select: none; -moz-user-select: none; -ms-user-select: none; user-select: none; padding: 0 4px; width: 4em; color: #aaaaaa; } pre.numberSource { margin-left: 3em; border-left: 1px solid #aaaaaa; padding-left: 4px; } div.sourceCode { } @media screen { pre > code.sourceCode > span > a:first-child::before { text-decoration: underline; } } code span.al { color: #ff0000; font-weight: bold; } code span.an { color: #60a0b0; font-weight: bold; font-style: italic; } code span.at { color: #7d9029; } code span.bn { color: #40a070; } code span.bu { color: #008000; } code span.cf { color: #007020; font-weight: bold; } code span.ch { color: #4070a0; } code span.cn { color: #880000; } code span.co { color: #60a0b0; font-style: italic; } code span.cv { color: #60a0b0; font-weight: bold; font-style: italic; } code span.do { color: #ba2121; font-style: italic; } code span.dt { color: #902000; } code span.dv { color: #40a070; } code span.er { color: #ff0000; font-weight: bold; } code span.ex { } code span.fl { color: #40a070; } code span.fu { color: #06287e; } code span.im { color: #008000; font-weight: bold; } code span.in { color: #60a0b0; font-weight: bold; font-style: italic; } code span.kw { color: #007020; font-weight: bold; } code span.op { color: #666666; } code span.ot { color: #007020; } code span.pp { color: #bc7a00; } code span.sc { color: #4070a0; } code span.ss { color: #bb6688; } code span.st { color: #4070a0; } code span.va { color: #19177c; } code span.vs { color: #4070a0; } code span.wa { color: #60a0b0; font-weight: bold; font-style: italic; } // apply pandoc div.sourceCode style to pre.sourceCode instead (function() { var sheets = document.styleSheets; for (var i = 0; i < sheets.length; i++) { if (sheets\[i\].ownerNode.dataset\["origin"\] !== "pandoc") continue; try { var rules = sheets\[i\].cssRules; } catch (e) { continue; } var j = 0; while (j < rules.length) { var rule = rules\[j\]; // check if there is a div.sourceCode rule if (rule.type !== rule.STYLE\_RULE || rule.selectorText !== "div.sourceCode") { j++; continue; } var style = rule.style.cssText; // check if color or background-color is set if (rule.style.color === '' && rule.style.backgroundColor === '') { j++; continue; } // replace div.sourceCode by a pre.sourceCode rule sheets\[i\].deleteRule(j); sheets\[i\].insertRule('pre.sourceCode{' + style + '}', j); } } })(); body { background-color: #fff; margin: 1em auto; max-width: 700px; overflow: visible; padding-left: 2em; padding-right: 2em; font-family: "Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif; font-size: 14px; line-height: 1.35; } #TOC { clear: both; margin: 0 0 10px 10px; padding: 4px; width: 400px; border: 1px solid #CCCCCC; border-radius: 5px; background-color: #f6f6f6; font-size: 13px; line-height: 1.3; } #TOC .toctitle { font-weight: bold; font-size: 15px; margin-left: 5px; } #TOC ul { padding-left: 40px; margin-left: -1.5em; margin-top: 5px; margin-bottom: 5px; } #TOC ul ul { margin-left: -2em; } #TOC li { line-height: 16px; } table { margin: 1em auto; border-width: 1px; border-color: #DDDDDD; border-style: outset; border-collapse: collapse; } table th { border-width: 2px; padding: 5px; border-style: inset; } table td { border-width: 1px; border-style: inset; line-height: 18px; padding: 5px 5px; } table, table th, table td { border-left-style: none; border-right-style: none; } table thead, table tr.even { background-color: #f7f7f7; } p { margin: 0.5em 0; } blockquote { background-color: #f6f6f6; padding: 0.25em 0.75em; } hr { border-style: solid; border: none; border-top: 1px solid #777; margin: 28px 0; } dl { margin-left: 0; } dl dd { margin-bottom: 13px; margin-left: 13px; } dl dt { font-weight: bold; } ul { margin-top: 0; } ul li { list-style: circle outside; } ul ul { margin-bottom: 0; } pre, code { background-color: #f7f7f7; border-radius: 3px; color: #333; white-space: pre-wrap; } pre { border-radius: 3px; margin: 5px 0px 10px 0px; padding: 10px; } pre:not(\[class\]) { background-color: #f7f7f7; } code { font-family: Consolas, Monaco, 'Courier New', monospace; font-size: 85%; } p > code, li > code { padding: 2px 0px; } div.figure { text-align: center; } img { background-color: #FFFFFF; padding: 2px; border: 1px solid #DDDDDD; border-radius: 3px; border: 1px solid #CCCCCC; margin: 0 5px; } h1 { margin-top: 0; font-size: 35px; line-height: 40px; } h2 { border-bottom: 4px solid #f7f7f7; padding-top: 10px; padding-bottom: 2px; font-size: 145%; } h3 { border-bottom: 2px solid #f7f7f7; padding-top: 10px; font-size: 120%; } h4 { border-bottom: 1px solid #f7f7f7; margin-left: 8px; font-size: 105%; } h5, h6 { border-bottom: 1px solid #ccc; font-size: 105%; } a { color: #0033dd; text-decoration: none; } a:hover { color: #6666ff; } a:visited { color: #800080; } a:visited:hover { color: #BB00BB; } a\[href^="http:"\] { text-decoration: underline; } a\[href^="https:"\] { text-decoration: underline; } code > span.kw { color: #555; font-weight: bold; } code > span.dt { color: #902000; } code > span.dv { color: #40a070; } code > span.bn { color: #d14; } code > span.fl { color: #d14; } code > span.ch { color: #d14; } code > span.st { color: #d14; } code > span.co { color: #888888; font-style: italic; } code > span.ot { color: #007020; } code > span.al { color: #ff0000; font-weight: bold; } code > span.fu { color: #900; font-weight: bold; } code > span.er { color: #a61717; background-color: #e3d2d2; }

simpleEnsembleGroup16
=====================

    library(simpleEnsembleGroup16)

* * *

Introduction
============

The `simpleEnsembleGroup16` package provides a collection of functions for performing various regression techniques, including linear regression, logistic regression, ridge & lasso regression, and random forest regression. Additionally, the package offers functionalities for feature selection, bagging and ensemble modeling.

The main features of the package are:

*   **Linear Regression**: Perform linear regression using the ordinary least squares method.
*   **Logistic Regression**: Perform logistic regression for binary classification problems.
*   **Lasso Regression**: Implement Lasso regression, a regularization technique for linear regression models.
*   **Ridge Regression**: Implement Ridge regression, a regularization technique for linear regression models.
*   **Random Forest Regression**: Perform Random Forest regression, a powerful ensemble learning method for regression tasks.
*   **Feature Selection**: Perform univariate feature selection based on Pearson Correlation Coefficient for regression or Point-Biserial Correlation Coefficient for binary classification.
*   **Bagging**: Perform bagging using bootrstrap aggregation.
*   **Ensemble Modeling**: Combine the predictions of multiple models using various ensemble techniques.

This vignette provides an overview of the package’s functionalities and demonstrates the usage of each function with examples and sample data.n

* * *

Installation
============

You can install the simpleEnsembleGroup16 package from GitHub using the following command:

*   **Install the devtools package if not already installed**
    
    install.packages(“devtools”)
    
*   **Install the simpleEnsembleGroup16 package from GitHub**
    
    devtools::install\_github(“abhihash01/Ensemble-Learning-R”)
    

* * *

Documentation
=============

1\. Linear Regression
---------------------

**Description**

The `linear_regression` function performs linear regression using the ordinary least squares method. Here’s an example:

**Usage**

    set.seed(123)
    X <- matrix(rnorm(100), ncol = 2)
    y <- rnorm(50)
    
    # Perform linear regression
    result <- linear_regression(X, y)

**Arguments**

*   **X**: Matrix of predictors/independent variables.
*   **y**: Response variable.

2\. Logistic Regression
-----------------------

**Description**

The `logistic_regression` function performs logistic regression for binary classification problems. Here’s an example:

**Usage**

    set.seed(123)
    X <- matrix(rnorm(100), ncol = 2)
    y <- sample(c(0, 1), 50, replace = TRUE)
    
    # Perform logistic regression
    result <- logistic_regression(X, y)

**Arguments**

*   **X:** Matrix of predictors/independent variables.
*   **y:** Response variable (binary).

3\. Ridge Regression
--------------------

**Description**

The `ridge_regression` function performs Ridge regression. Here’s an example:

**Usage**

    set.seed(123)
    X <- matrix(rnorm(100), ncol = 2)
    y <- rnorm(50)
    lambda <- 0.1
    
    # Perform ridge regression
    result <- ridge_regression(X, y, lambda)
    #> Warning: package 'glmnet' was built under R version 4.3.3
    #> Loading required package: Matrix
    #> Loaded glmnet 4.1-8

**Arguments**

*   **X:** Matrix of predictors/independent variables.
*   **y:** Response variable.
*   **lambda:** Ridge parameter.

4\. Lasso Regression
--------------------

**Description**

The `lasso_regression` function performs Lasso regression. Here’s an example:

**Usage**

    set.seed(123)
    X <- matrix(rnorm(100), ncol = 2)
    y <- rnorm(50)
    lambda <- 0.1
    
    # Perform Lasso regression
    result <- lasso_regression(X, y, lambda)

**Arguments**

*   **X:** Matrix of predictors/independent variables.
*   **y:** Response variable.
*   **lambda:** Lasso parameter.

5\. Random Forest Regression
----------------------------

**Description**

The `random_forest_regression` function performs Random Forest regression. Here’s an example:

**Usage**

    set.seed(123)
    X <- matrix(rnorm(100), ncol = 2)
    y <- rnorm(50)
    
    # Perform Random Forest regression
    result <- random_forest_regression(X, y)
    #> Warning: package 'randomForest' was built under R version 4.3.3
    #> randomForest 4.7-1.1
    #> Type rfNews() to see new features/changes/bug fixes.

**Arguments**

*   **X:** Matrix of predictors/independent variables.
*   **y:** Response variable.
*   **ntree:** Number of trees to grow (default: 500).

6\. Support Vector Machine Regression
-------------------------------------

**Description**

The `svm_regression` function performs Support Vector Machine regression. Here’s an example:

**Usage**

    set.seed(123)
    X <- matrix(rnorm(100), ncol = 2)
    y <- rnorm(50)
    
    # Perform SVM regression
    result <- svm_regression(X, y)

**Arguments**

*   **X:** Matrix of predictors/independent variables.
*   **y:** Response variable.
*   **kernel:** Kernel function to be used. Default is “linear”.

7\. XGBoost Regression
----------------------

**Description**

The `xgboost_regression` function performs XGBoost regression. Here’s an example:

**Usage**

    set.seed(123)
    X <- matrix(rnorm(100), ncol = 2)
    y <- rnorm(50)
    
    # Perform XGBoost regression
    result <- xgboost_regression(X, y)
    #> Warning: package 'xgboost' was built under R version 4.3.3
    #> [1]  train-rmse:1.003678 
    #> [2]  train-rmse:0.862499 
    #> [3]  train-rmse:0.723022 
    #> [4]  train-rmse:0.618246 
    #> [5]  train-rmse:0.526250 
    #> [6]  train-rmse:0.453633 
    #> [7]  train-rmse:0.422514 
    #> [8]  train-rmse:0.355791 
    #> [9]  train-rmse:0.305184 
    #> [10] train-rmse:0.287411 
    #> [11] train-rmse:0.274854 
    #> [12] train-rmse:0.252707 
    #> [13] train-rmse:0.218694 
    #> [14] train-rmse:0.190224 
    #> [15] train-rmse:0.179102 
    #> [16] train-rmse:0.151565 
    #> [17] train-rmse:0.136607 
    #> [18] train-rmse:0.120567 
    #> [19] train-rmse:0.108187 
    #> [20] train-rmse:0.100901 
    #> [21] train-rmse:0.092239 
    #> [22] train-rmse:0.086686 
    #> [23] train-rmse:0.079884 
    #> [24] train-rmse:0.075012 
    #> [25] train-rmse:0.069455 
    #> [26] train-rmse:0.066436 
    #> [27] train-rmse:0.061947 
    #> [28] train-rmse:0.056792 
    #> [29] train-rmse:0.053660 
    #> [30] train-rmse:0.046329 
    #> [31] train-rmse:0.043063 
    #> [32] train-rmse:0.037061 
    #> [33] train-rmse:0.033637 
    #> [34] train-rmse:0.030858 
    #> [35] train-rmse:0.028651 
    #> [36] train-rmse:0.026679 
    #> [37] train-rmse:0.023909 
    #> [38] train-rmse:0.022144 
    #> [39] train-rmse:0.019817 
    #> [40] train-rmse:0.018508 
    #> [41] train-rmse:0.016693 
    #> [42] train-rmse:0.015675 
    #> [43] train-rmse:0.014202 
    #> [44] train-rmse:0.012713 
    #> [45] train-rmse:0.011602 
    #> [46] train-rmse:0.010455 
    #> [47] train-rmse:0.008958 
    #> [48] train-rmse:0.007845 
    #> [49] train-rmse:0.007004 
    #> [50] train-rmse:0.006250 
    #> [51] train-rmse:0.005618 
    #> [52] train-rmse:0.005281 
    #> [53] train-rmse:0.004778 
    #> [54] train-rmse:0.004505 
    #> [55] train-rmse:0.003791 
    #> [56] train-rmse:0.003291 
    #> [57] train-rmse:0.002830 
    #> [58] train-rmse:0.002545 
    #> [59] train-rmse:0.002323 
    #> [60] train-rmse:0.002139 
    #> [61] train-rmse:0.001939 
    #> [62] train-rmse:0.001657 
    #> [63] train-rmse:0.001577 
    #> [64] train-rmse:0.001577 
    #> [65] train-rmse:0.001449 
    #> [66] train-rmse:0.001313 
    #> [67] train-rmse:0.001313 
    #> [68] train-rmse:0.001312 
    #> [69] train-rmse:0.001312 
    #> [70] train-rmse:0.001312 
    #> [71] train-rmse:0.001312 
    #> [72] train-rmse:0.001312 
    #> [73] train-rmse:0.001312 
    #> [74] train-rmse:0.001312 
    #> [75] train-rmse:0.001312 
    #> [76] train-rmse:0.001312 
    #> [77] train-rmse:0.001312 
    #> [78] train-rmse:0.001312 
    #> [79] train-rmse:0.001312 
    #> [80] train-rmse:0.001312 
    #> [81] train-rmse:0.001312 
    #> [82] train-rmse:0.001312 
    #> [83] train-rmse:0.001312 
    #> [84] train-rmse:0.001312 
    #> [85] train-rmse:0.001312 
    #> [86] train-rmse:0.001312 
    #> [87] train-rmse:0.001312 
    #> [88] train-rmse:0.001312 
    #> [89] train-rmse:0.001312 
    #> [90] train-rmse:0.001312 
    #> [91] train-rmse:0.001312 
    #> [92] train-rmse:0.001312 
    #> [93] train-rmse:0.001312 
    #> [94] train-rmse:0.001312 
    #> [95] train-rmse:0.001312 
    #> [96] train-rmse:0.001312 
    #> [97] train-rmse:0.001312 
    #> [98] train-rmse:0.001312 
    #> [99] train-rmse:0.001312 
    #> [100]    train-rmse:0.001312

**Arguments**

*   **X:** Matrix of predictors/independent variables.
*   **y:** Response variable.
*   **nrounds:** Number of boosting rounds. Default is 100.

8\. Bagging
-----------

**Description**

The `bagging` function implements the bagging (bootstrap aggregating) ensemble method for regression models. Here’s an example:

**Usage**

      set.seed(123)
      X <- matrix(rnorm(100 * 5), ncol = 5)
      beta <- rnorm(5)
      y <- X %*% beta + rnorm(100)
    
      # bagging_result <- bagging("linear_regression", X, y, 100)

**Arguments**

*   **model:** A character string specifying the regression model to use
*   **X:** The matrix of predictors
*   **y:** The response variable
*   **R:** Number of bagging iterations
*   **additional\_args:** Additional arguments to pass to the regression model function

9\. Feature Selection
---------------------

**Description**

The `univariate_feature_selection_corr` function performs univariate feature selection based on Pearson Correlation Coefficient for regression problems or Point-Biserial Correlation Coefficient for binary classification problems. Here’s an example:

**Usage**

For Continuous y

      set.seed(123)
      n <- 50
      p <- 1000
      X <- matrix(rnorm(n * p), nrow = n, ncol = p)
      y <- rnorm(n)
      selected_data <- univariate_feature_selection(X, y, K = 3)

For Binary y

      set.seed(123)
      n <- 50
      p <- 1000
      X <- matrix(rnorm(n * p), nrow = n, ncol = p)
      y <- factor(sample(c(0, 1), n, replace = TRUE))
    
      selected_data <- univariate_feature_selection(X, y, K = 3)

**Arguments**

*   **X:** Matrix of predictor variables.
*   **y:** Vector of target variable.
*   **K:** Number of top predictors to select.

10\. Ensemble Modeling
----------------------

**Description**

The `ensemble_model` function combines the predictions of multiple models. Here’s an example:

**Usage**

    # ensemble_model(c("linear_regression", "random_forest_regression"),
    #                c("regression", "regression"),
    #                list(list(), list(ntree = 500)),
    #                X_train, y_train)

**Arguments**

*   **models:** List of model names.
*   **types:** List of model types corresponding to each model.
*   **params:** List of parameters corresponding to each model.
*   **X:** Feature matrix.
*   **y:** Target variable.

* * *

Conclusion
==========

The `simpleEnsembleGroup16` package offers a comprehensive set of tools for regression analysis, feature selection, and ensemble modeling. With its user-friendly interface and well-documented functions, this package simplifies the process of applying these techniques to your data.

In addition to the core regression functions, the package’s feature selection and ensemble modeling capabilities enable you to enhance the performance and robustness of your models. The `univariate_feature_selection_corr` function allows you to identify the most relevant predictors, while the `ensemble_model` function provides a convenient way to combine multiple models and leverage their collective strengths.

Whether you’re working on regression tasks, classification problems, or exploring advanced modeling techniques, the `simpleEnsembleGroup16` package offers a versatile toolkit to streamline your analysis workflow. We encourage you to explore the package’s functions and adapt them to your specific use cases.

If you encounter any issues or have suggestions for improvements, please feel free to contribute to the package’s development or reach out to the maintainers for support.

(function () { var script = document.createElement("script"); script.type = "text/javascript"; script.src = "https://mathjax.rstudio.com/latest/MathJax.js?config=TeX-AMS-MML\_HTMLorMML"; document.getElementsByTagName("head")\[0\].appendChild(script); })();
