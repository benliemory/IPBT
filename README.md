# IPHM
Informative Prior Hierarchical Model

R package is provided in the IPHM_R_package folder. All the IPHM priors are built-in features in IPHM package.

All the IPHM priors are also summarized in the Informative_Priors folder in excel sheets. 
Although only variance is used for IPHM priors, we also provide the historical means for possible use.

Quick Installation Guide:
If R package "devtools" has been loaded, IPHM can be easily installed by following: 
install_github(repo = "benliemory/IPHM/IPHM_R_package")

A Simple Example:

library(IPHM)
/#####  Load Example Data
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
