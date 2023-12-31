% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/regioneReloaded_classes.R
\docType{class}
\name{multiLocalZScore-class}
\alias{multiLocalZScore-class}
\alias{mLZS}
\title{multiLocalZScore Class}
\description{
An S4 class for "multiLocalZScore" object.
}
\section{Slots}{

\describe{
\item{\code{parameters}}{List of parameters used to create the object}

\item{\code{multiLocalZscores}}{Results of multiple pairwise permutation tests on shifted region sets generated with \code{\link[=multiLocalZscore]{multiLocalZscore()}}.}

\item{\code{matrix}}{List of numerical matrices containing local z-scores and correlation values generated with \code{\link[=makeLZMatrix]{makeLZMatrix()}}.}
}}

\examples{

data("cw_Alien")

AlienRSList_narrow_small  <- AlienRSList_narrow[c("regA","regB","regC")]

mlz_test <- multiLocalZscore(A = AlienRSList_narrow_small$regA, Blist = AlienRSList_narrow_small,
                            sampling = FALSE, genome = AlienGenome, per.chromosome = TRUE,
                            ranFUN = "resampleGenome", evFUN = "numOverlaps",
                            ntimes = 10, mc.cores = 2)

class(mlz_test)

}
