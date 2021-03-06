% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pca_func.R
\name{pca_func}
\alias{pca_func}
\title{A function for PCA plotting with highlighting groups using ellipses}
\usage{
pca_func(
  data,
  groups,
  title = "",
  print_ellipse = TRUE,
  center = TRUE,
  scale = TRUE
)
}
\arguments{
\item{data}{a sample-by-measures numeric matrix. Required}

\item{groups}{a character vector of sample group assignment. Required}

\item{title}{a title for the graph. Default: none}

\item{print_ellipse}{highlight groups by ellipses, Default: TRUE}

\item{center}{center the data for PCA, see ?prcomp. Default: TRUE}

\item{scale}{scale the data for PCA, see ?prcomp. Default: TRUE}
}
\value{
ggplot2 object
}
\description{
Beautiful PCA plot
}
\note{
Source: \url{https://shiring.github.io/machine_learning/2017/01/15/rfe_ga_post}
}
\examples{
\dontrun{
library(ellipse)
library(ggplot2)
pca_func(iris[, 1:3], groups = iris$Species, title = "Iris")
}
}
