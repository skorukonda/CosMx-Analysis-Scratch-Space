% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/GetPolyFromTranscripts.R
\name{getPolyFromTranscripts}
\alias{getPolyFromTranscripts}
\title{Derive a polygon from transcript locations}
\usage{
getPolyFromTranscripts(x, y = NULL, type = "ahull", alpha = 0.1)
}
\arguments{
\item{x}{Vector of x positions or 2-column matrix}

\item{y}{Vector of y positions}

\item{type}{Either "ahull" or "chull". The latter is faster but limited to convex shapes.}

\item{alpha}{Passed to alphahull::ahull(). Smaller makes for more nuanced polygons.}
}
\value{
A polygon's coordinated (a 2-column matrix)
}
\description{
Input x and y positions; derive an encircling polygon
}
