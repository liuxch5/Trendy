% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/helperFunctions.R
\name{formatResults}
\alias{formatResults}
\title{Function to format results for saving.}
\usage{
formatResults(topTrendyData, featureNames = NULL)
}
\arguments{
\item{topTrendyData}{results from topTrendy() function}

\item{featureNames}{an optional vector of features 
(if only interested in outputting a subset of features/genes).}
}
\value{
The function will reformat the output from Trendy so
that it can be easily save as a .txt or .csv file.
If featureNames is supplied then only the information
for those features/genes is returned.
}
\description{
format data from Trendy which can be saved for later use.
}
\examples{
data(trendyExampleData)
 myTrends <- trendy(Data=trendyExampleData[seq_len(2),])
 myTrends <- results(myTrends)
 topTrendyRes <- topTrendy(myTrends)
 resToSave <- formatResults(topTrendyRes)
}
\author{
Rhonda Bacher
}
