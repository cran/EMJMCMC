% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/estimate.gamma.cpen.R
\name{estimate.gamma.cpen}
\alias{estimate.gamma.cpen}
\title{Estimate marginal log posterior of a single BGNLM model}
\usage{
estimate.gamma.cpen(
  formula,
  data,
  r = 1/1000,
  logn = log(1000),
  relat = c("cos", "sigmoid", "tanh", "atan", "sin", "erf")
)
}
\arguments{
\item{formula}{formula}

\item{data}{dataset}

\item{r}{prior inclusion penalty parameter}

\item{logn}{logn}

\item{relat}{a set of nonlinear transformations in the class of BGNLMs of interest}
}
\value{
A list of
\describe{
 \item{mlik}{marginal likelihood of the model}
 \item{waic}{AIC model selection criterion}
 \item{dic}{BIC model selection criterion}
 \item{summary.fixed$mean}{a vector of posterior modes of the parameters}
}
}
\description{
Estimate marginal log posterior of a single BGNLM model
}
