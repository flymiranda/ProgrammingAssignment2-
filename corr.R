corr <-function(directory, threshold=0) {
    result <- c()
    
    df <- complete(directory, 1:332)    
    for(i in 1:332)
    {   
        if(df[i,2] >= threshold)
        {
            filename <- sprintf("%03d", i)
            filepath <- paste(directory[1],"/", filename, ".csv", sep="")        
            data <- read.csv(filepath)            
            ##sulfate <- complete.cases(data[["sulfate"]])
            ##nitrate <- complete.cases(data[["nitrate"]])
            
            z <- cor(data$sulfate, data$nitrate, use = "na.or.complete")
            result <- append(result, z)
        }
    }
    result
}