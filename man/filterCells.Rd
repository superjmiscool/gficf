% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cellQC.R
\name{filterCells}
\alias{filterCells}
\title{Cell QC}
\usage{
filterCells(counts, organism, plot = F, verbose = T, minUMI = 800)
}
\arguments{
\item{counts}{Matrix; Raw counts matrix}

\item{organism}{characters; Organism (supported human and mouse).}

\item{plot}{boolean; If regression plots must be showed.}

\item{verbose}{boolean; Increase verbosity.}

\item{minUMI}{numeric; Minimium number of UMI per cell (default 800).}
}
\value{
The updated gficf object.
}
\description{
Filter Cells with low gene ratio detection and high MT ratio.
Loess and GAM regression are used to fit relationships between the number of UMI and either the ratio of detected genes or the MT ratio.
}
