% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/extractPattern.R
\name{extractPattern}
\alias{extractPattern}
\title{Extract pattern from segmented regression}
\usage{
extractPattern(trendyOutData, Pattern = NULL, adjR2Cut = 0.5,
  Delay = 0)
}
\arguments{
\item{trendyOutData}{output from trendy() function}

\item{Pattern}{vector containing pattern to search genes/features 
(e.g, c("up", "down")), no-change is designated by "same". If length
is one (e.g c("up")) then it will only consider features with 
constant pattern across the entire time-course.}

\item{adjR2Cut}{only consider features with adjusted R^2 > adjR2Cut. 
Default = .5.}

\item{Delay}{search for pattern starting after certain 
time-point (e.g. only genes with a breakpoint > 10).}
}
\value{
Genes: names of genes/features containing pattern 
 and the breakpoints corresponding to the pattern.
}
\description{
find dynamic genes that follow a given pattern
}
\examples{
 myTrends <- trendy(trendyExampleData[seq_len(5),], tVect=seq_len(40))
 myTrends <- results(myTrends)
 #extractPattern(myTrends, Pattern = c("up")) #increasing only features
 #extractPattern(myTrends, Pattern = c("same", "down")) 
 #extractPattern(myTrends, Pattern = c("up", "down"), Delay = 20)
}
\author{
Rhonda Bacher
}
