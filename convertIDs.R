#Convert character data frame into numeric data frame
#@parameter: convert.list, vector
#@return numeric data frame

#add library from bioconductor
source("https://bioconductor.org/biocLite.R")  
biocLite("org.Hs.eg.db") 
biocLite("clusterProfiler")
library(clusterProfiler)
library(org.Hs.eg.db)


#Specifically convert uniport id to gene symbol and ensembl.
convert.id <- function(convert.list){
    gene.list.df <- bitr(convert.list, fromType = "UNIPROT", 
                         toType = c( "ENSEMBL", "SYMBOL"), 
                         OrgDb = org.Hs.eg.db)
    
    return(gene.list.df)
}