% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/estimate.bas.lm.R
\name{estimate.bas.lm}
\alias{estimate.bas.lm}
\title{Obtaining Bayesian estimators of interest from a LM model}
\usage{
estimate.bas.lm(formula, data, prior, n, g = 0)
}
\arguments{
\item{formula}{a formula object for the model to be addressed}

\item{data}{a data frame object containing variables and observations corresponding to the formula used}

\item{prior}{integers 1, 2 or 3 are allowed corresponding to AIC, BIC or Zellner's g-prior}

\item{n}{sample size}

\item{g}{g}
}
\value{
a list of
\describe{
\item{mlik}{marginal likelihood of the model}
\item{waic}{AIC model selection criterion}
\item{dic}{BIC model selection criterion}
\item{summary.fixed$mean}{a vector of posterior modes of the parameters}
}
}
\description{
Obtaining Bayesian estimators of interest from a LM model
}
\examples{
X4 <- as.data.frame(
  array(
    data = rbinom(n = 50 * 1000, size = 1, prob = runif(n = 50 * 1000, 0, 1)),
    dim = c(1000, 50)
  )
)
Y4 <- rnorm(
  n = 1000,
  mean = 1 +
    7 * (X4$V4 * X4$V17 * X4$V30 * X4$V10) +
    7 * (((X4$V50 * X4$V19 * X4$V13 * X4$V11) > 0)) +
    9 * (X4$V37 * X4$V20 * X4$V12) +
    7 * (X4$V1 * X4$V27 * X4$V3) +
    3.5 * (X4$V9 * X4$V2) +
    6.6 * (X4$V21 * X4$V18) +
    1.5 * X4$V7 +
    1.5 * X4$V8,
  sd = 1
)
X4$Y4 <- Y4
data.example <- as.data.frame(X4)
formula1 <- as.formula(
  paste(colnames(X4)[51], "~ 1 +", paste0(colnames(X4)[-c(51)], collapse = "+"))
)

estimate.bas.lm(formula = formula1, data = data.example, prior = 2, n = 47)
}
\seealso{
BAS::bayesglm.fit
}
\keyword{methods}
\keyword{models}
