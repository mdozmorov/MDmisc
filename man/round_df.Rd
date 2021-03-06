% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/round_df.R
\name{round_df}
\alias{round_df}
\title{Round all columns with numerical values in a data frame}
\usage{
round_df(df, digits = 3)
}
\arguments{
\item{df}{a data frame with some numeric columns. Required}

\item{digits}{the number of digits in decimal part. Defauld: 3}
}
\value{
the data frame with rounded numbers
}
\description{
A function to round all columns with numerical values in a data frame
}
\details{
All numbers are rounded in decimal (e.g., 0.003), not scientific, format
}
\note{
Source: \url{https://stackoverflow.com/questions/9063889/how-to-round-a-data-frame-in-r-that-contains-some-character-variables}
}
\examples{
\dontrun{
mtx <- data.frame(a = c("a", "b", "c"), b = c(0.123456, 1.2345678, 2.34), c = c(5.678e-3, 3.4567890, 6.789^3))
mtx
round_df(mtx)
}
}
