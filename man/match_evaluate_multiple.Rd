% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/scrna_evaluationFunctions.R
\name{match_evaluate_multiple}
\alias{match_evaluate_multiple}
\title{match_evaluate_multiple}
\usage{
match_evaluate_multiple(clus_algorithm, clus_truth = NULL)
}
\arguments{
\item{clus_algorithm}{cluster labels from algorithm}

\item{clus_truth}{true cluster labels. If NULL, will attempt to read them 
from the names of `clus_algorithm` (expecting the format 
`clusterName.cellName`)}
}
\value{
A list.
}
\description{
Function to match cluster labels with 'true' clusters using the Hungarian 
algorithm, and return precision, recall, and F1 score. Written by Lukas 
Weber in August 2016 as part of his 
\href{https://github.com/lmweber/cytometry-clustering-comparison}{cytometry
clustering comparison}, with just slight modifications on initial handling 
of input arguments.
}
\examples{
# random data
dat <- data.frame( 
 cluster=rep(LETTERS[1:3], each=10),
 x=c(rnorm(20, 0), rnorm(10, 1)),
 y=c(rnorm(10, 1), rnorm(20, 0))
)
# clustering
dat$predicted <- kmeans(dist(dat[,-1]),3)$cluster
# evaluation
match_evaluate_multiple(dat$predicted, dat$cluster)
}
