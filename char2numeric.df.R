#Convert character data frame into numeric data frame
#@parameter: data, data frame 
#@return numeric data frame


char2numeric.df <- function(data){
    #store rownames
    data.rownmaes <- rownames(data)
    
    #convert character data frame to numeric data frame
    data <- data.frame(lapply(data,as.numeric))
    
    #assign rownames
    rownames(data) <- data.rownmaes
    
    return(data)
}

