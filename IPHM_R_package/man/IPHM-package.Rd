\name{IPHM-package}
\alias{IPHM-package}
\alias{IPHM}
\docType{package}
\title{
Informative Priors Hierarchical Model(IPHM)
}
\description{
IPHM, using current public available microarray data, investigates the feasibility and effectiveness of deriving informative priors from historical data and using them in the problem of detecting differentially expressed genes.This package provides users the possibility of using their own historical data or IPHM priors.96 pre-calculated IPHM priors are built in the package.  
}
\details{
\tabular{ll}{
Package: \tab IPHM\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2015-04-19\cr
License: \tab GPL-2\cr
}
The package works similar as most of packages detecting differentially expressed genes except using historical data to significantly improve the results. Hence, historical data is required for each run of the program. There are two options for the users: (1) provide their own historical data. (2) Use built-in IPHM priors.
}
\author{
Ben Li

Maintainer: Ben Li<ben.li@emory.edu>

}
\references{
Lukk, M., et al. (2010) A global map of human gene expression, Nat Biotechnol, 28, 322-324.
}


\examples{

library(IPHM)
#####  Load Example Data
data(ExampleData)

##### Using IPHM prior providing historical information
##### IPHM id 35 indicates normal heart data
DE_gene_lists = IPHM.main(ExampleData$Control,ExampleData$Treatment, 
                          IPHM.prior=TRUE,IPHM.id=35)


##### Load 10 samples of normal heart data as external historical information
data(history)

##### Using external data as historical data
DE_gene_lists_ext = IPHM.main(ExampleData$Control,ExampleData$Treatment, 
                              IPHM.prior=FALSE,history)
}
