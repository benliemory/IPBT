\name{IPBT-package}
\alias{IPBT-package}
\alias{IPBT}
\docType{package}
\title{
Informative Priors Bayesian Test(IPBT)
}
\description{
IPBT, using current public available microarray data, investigates the feasibility and effectiveness of deriving informative priors from historical data and using them in the problem of detecting differentially expressed genes.This package provides users the possibility of using their own historical data or IPBT priors.96 pre-calculated IPBT priors are built in the package.  
}
\details{
\tabular{ll}{
Package: \tab IPBT\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2015-04-19\cr
License: \tab GPL-2\cr
}
The package works similar as most of packages detecting differentially expressed genes except using historical data to significantly improve the results. Hence, historical data is required for each run of the program. There are two options for the users: (1) provide their own historical data. (2) Use built-in IPBT priors.
}
\author{
Ben Li

Maintainer: Ben Li<ben.li@emory.edu>

}
\references{
Lukk, M., et al. (2010) A global map of human gene expression, Nat Biotechnol, 28, 322-324.

Li, B., et al. (2015) Bayesian inference with historical data-based informative priors improves detection of differentially expressed genes, Bioinformatics. 
}


\examples{

library(IPBT)
#####  Load Example Data
data(ExampleData)

##### Using IPBT prior providing historical information
##### IPBT id 35 indicates normal heart data
DE_gene_lists = IPBT.main(ExampleData$Control,ExampleData$Treatment, 
                          IPBT.prior=TRUE,IPBT.id=35)


##### Load 10 samples of normal heart data as external historical information
data(history)

##### Using external data as historical data
DE_gene_lists_ext = IPBT.main(ExampleData$Control,ExampleData$Treatment, 
                              IPBT.prior=FALSE,history)
}
