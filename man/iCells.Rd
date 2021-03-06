% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Functions.R
\name{iCells}
\alias{iCells}
\title{iCells}
\usage{
iCells(file.dir, target.cells, sample.conditions = NA,
  neighbours = 500, verbose = FALSE, pooling = "relative",
  q.cutoffs = 0.05, preproc.cells = 10000, icells.chuncks = 1e+05,
  preproc.chuncks = 2e+05, min_ODscore = 3)
}
\arguments{
\item{file.dir}{input dataset, file name}

\item{target.cells}{Number of iCells you would like to obtain}

\item{sample.conditions}{optional,  a factor indicating your sample conditions (for example, stages, treatments). This will prevent cells from different conditions to be pooled into the same iCell.}

\item{neighbours}{How many neighbours are used to search for a mate. Increasing it will increase fidelity of iCells, but only slighlty. In fact, multiple, iterative searches for neighbours are perfomed anyway.}

\item{verbose}{Whether to print on screen all the processing information}

\item{pooling}{Advanced use only. A technical parameter, you should not touch this.}

\item{q.cutoffs}{Advanced use only. The cutoff for pooling cells, default \bold{0.05}, meaning only cells closer than \bold{0.05} percentile are pooled. Deacresing the values yields better quality iCells but longer times, and viceversa.}

\item{preproc.cells}{Advanced use only. how many cells to use for the initial creation of the model. Reduce it if you have memory issues. Useless to increase it.}

\item{icells.chuncks}{Advanced use only. Size of the chunks of the original cells. Reduce it if you have memory issues. Probably useless to increase it.}

\item{preproc.chuncks}{Advanced use only. Reduce it if you have memory issues. Increase to fasten the initial step where the model is calculated.}

\item{min_ODscore}{Advanced use only. Increasing the value will result in using less highly variable genes for the creation of iCells.}
}
\value{
A list with two elements: icells.data (for you) and debugging (for me, if there are problems).In addition, it writes to current working directory the icells matrix automatically under the name icells.mtx.gz.

\itemize{i
\item {\bold{icell.mat}} {icell Expression counts in the Matricx format}
\item {\bold{iCells}} {indices of the original cells}
\item {\bold{output.conditions}} {If you forced a pooling by condition (parameter \code{sample.conditions}) this vector contains the condition of each icell.}
\item {\bold{model}} {The numerical model used to compute cell to cell distances. Its meaning is explained in the first part (bigSCale core, advanced use) of the GitHub tutorial}
\item {\bold{driving.genes}} {The highly variable genes used to caculate cell to cell distances}
}
}
\description{
Creates an iCell dataset starting from the typical outputs of CellRanger (.mex or .h5)
}
\examples{
check the online tutorial at Github

}
