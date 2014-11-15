complete <- function(directory, id=1:332) {
    nobs <- c()
    for(i in id) {        
        filename <- sprintf("%03d", i)        
        filepath <- paste(directory[1],"/", filename, ".csv", sep="")
        ##print(filepath)
        data <- read.csv(filepath)               
        oneresult <- complete.cases(data)
        z <- sum(oneresult)
        nobs <- append(nobs, z)
    }        
    df <- data.frame(id, nobs)
    df
}
    