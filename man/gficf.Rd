% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gficf.R
\name{gficf}
\alias{gficf}
\title{Gene Frequency - Inverse Cell Frequency (GF-ICF)}
\usage{
gficf(
  M = NULL,
  QCdata = NULL,
  cell_count_cutoff = 5,
  cell_percentage_cutoff2 = 0.03,
  nonz_mean_cutoff = 1.12,
  normalize = TRUE,
  storeRaw = TRUE,
  batches = NULL,
  groups = NULL,
  filterGenes = TRUE,
  verbose = TRUE,
  ...
)
}
\arguments{
\item{M}{Matrix; UMI cell count matrix}

\item{QCdata}{list; QC cell object.}

\item{cell_count_cutoff}{numeric; All genes detected in less than cell_count_cutoff cells will be excluded (default 5).}

\item{cell_percentage_cutoff2}{numeric; All genes detected in at least this percentage of cells will be included (default 0.03, i.e. 3 percent of cells).}

\item{nonz_mean_cutoff}{numeric genes detected in the number of cells between the above mentioned cutoffs are selected only when their average expression in non-zero cells is above this cutoff (default 1.12).}

\item{normalize}{logical; Rescale UMI counts before apply GFICF. Rescaling is done using EdgeR normalization.}

\item{storeRaw}{logical; Store UMI counts.}

\item{batches}{vector; Vector or factor for batch.}

\item{groups}{vector; Vector or factor for biological condition of interest.}

\item{filterGenes}{logical; Apply gene filter (default TRUE).}

\item{verbose}{boolean; Increase verbosity.}

\item{...}{Additional arguments to pass to ComBat_seq call.}
}
\value{
The updated gficf object.
}
\description{
R implementation of the GF-ICF
Thanks to 3’-end scRNA-seq approaches, we can now have an accurate estimation of gene expression without having to account for gene length,
thus the number of transcripts (i.e. UMI) associated to each gene, strictly reflects the frequency of a gene in a cell, exactly like a word in a document.
GFICF (Gene Frequency - Inverse Cell Frequency) is analogous of TF-IDF scoring method as defined for tex mining With GFICF we consider a cell to be
analogous to a document, genes analogous to words and gene counts to be analogous of the word’s occurrence in a document.
}
