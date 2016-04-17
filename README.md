# IPBT
Informative Prior Bayesian Test

R package is provided in the IPBT_R_package folder. All the IPBT priors are built-in features in IPBT package.

All the IPBT priors are also summarized in the Informative_Priors folder in excel sheets. 
Although only variance is used for IPBT priors, we also provide the historical means for possible use.

## Update March 22, 2016
Added fold change, approximate P value and Benjamini and Hochberg's false discovery rate

We present our work in a Bayesian framework. Thus we mainly use Bayes factor instead of P value which is a frequentist's perspective. 
We understand that p value is widely used and highly desired in biomedical research field and we showed that our method is equivalent to an adjusted t test in terms of detecting differentially expressed genes (their ranks). 

In this update, we added fold change for biologists' convenience to check whether a gene is up- or down- regulated. We also added approximate P value and Benjamini and Hochberg's false discovery rate (FDR) for possible use. 

However, it can never be emphasized enough that P values (and further FDRs from P values) should be used VERY CAREFULLY! More can be found on the statement from American Statistical Association (https://www.amstat.org/newsroom/pressreleases/P-ValueStatement.pdf) 


## Quick Installation Guide:
If R package "devtools" has been loaded, IPBT can be easily installed by following: 

library(devtools)

install_github(repo = "benliemory/IPBT/IPBT_R_package")

## A Simple Example:

library(IPBT)

\#####  Load Example Data

data(ExampleData)

\##### Using IPBT prior providing historical information

\##### IPBT id 35 indicates normal heart data

DE_gene_lists = IPBT.main(ExampleData$Control,ExampleData$Treatment, 
                          IPBT.prior=TRUE,IPBT.id=35)


\##### Load 10 samples of normal heart data as external historical information

data(history)

\##### Using external data as historical data

DE_gene_lists_ext = IPBT.main(ExampleData$Control,ExampleData$Treatment, 
                              IPBT.prior=FALSE,history)


## Reference
Li B, Sun Z, He Q, Zhu Y, Qin ZS (2015) Bayesian inference with historical data-based informative priors improves detection of differentially expressed genes Bioinformatics (Oxford, England) doi:10.1093/bioinformatics/btv631
