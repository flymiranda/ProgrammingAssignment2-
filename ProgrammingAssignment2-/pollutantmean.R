ft <- function(directory, pollutant, id = 1:332) {
    result <- c()
    for(i in id) {        
        filename <- sprintf("%03d", i)        
        filepath <- paste(directory[1],"/", filename, ".csv", sep="")
        data <- read.csv(filepath)
        y <- data[pollutant]
        x <- is.na(y)
        z <- y[!x]
        result <- append(result, z)        
    }    
    mean(result)
}

