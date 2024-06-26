% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/simplifyposteriors.R
\name{simplifyposteriors}
\alias{simplifyposteriors}
\title{A function that ads up posteriors for the same expression written
in different character form in different parallel runs of the algorithm
(mainly for Logic Regression and Deep Regression contexts)}
\usage{
simplifyposteriors(X, posteriors, th = 1e-04, thf = 0.2, resp)
}
\arguments{
\item{X}{a data.frame containing the data on the covariates}

\item{posteriors}{a data.frame with expressions in the first column and their posteriors in the second column from all of the runs}

\item{th}{initial filtering before summary threshold}

\item{thf}{threshold for final filtering after summary}

\item{resp}{the response to be addressed}
}
\value{
res, a data.frame with the summarized across runs expressions and
their posteriors
}
\description{
A function that ads up posteriors for the same expression written
in different character form in different parallel runs of the algorithm
(mainly for Logic Regression and Deep Regression contexts)
}
\seealso{
runemjmcmc
}
\keyword{methods}
\keyword{models}
