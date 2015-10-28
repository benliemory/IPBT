# IPBT
Informative Prior Bayesian Test

R package is provided in the IPBT_R_package folder. All the IPBT priors are built-in features in IPBT package.

All the IPBT priors are also summarized in the Informative_Priors folder in excel sheets. 
Although only variance is used for IPBT priors, we also provide the historical means for possible use.

## Quick Installation Guide:
If R package "devtools" has been loaded, IPBT can be easily installed by following: 

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
