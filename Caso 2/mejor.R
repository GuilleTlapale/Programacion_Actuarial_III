
setwd("C:/Users/guill_000/Documents/Programacion_Actuarial_III/Caso 2")

outcome <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
head(outcome)
ncol(outcome)
names(outcome)
outcome[,11] <- as.numeric(outcome[,11])
hist(outcome[,11])

mejor <- function(estado,resultado){  
    estado <- as.character(estado)
    resultado <- as.character(resultado)
    
    outcome <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
    
    x <- outcome[,7]
    x1 <- factor(x)
    x2 <- attr(x1,"levels")
    x3 <- x2[x2 == estado]
    if(length(x3) == 0){ stop("Estado inválido") }
    
    y <- c("neumonia", "falla", "ataque")
    y1 <- y[y == resultado]
    if(length(y1) == 0){ stop("Resultado inválido") }
    else {  
        if(resultado == "ataque"){ t <- 11 }
        else{ 
            if(resultado == "falla"){ t <- 17 }
            else{ 
                if(resultado == "neumonia"){
                    t <- 23
                }
            }
        }
    }
    
    
    z <- split(outcome, outcome$State)
    z1 <- z[[estado]]
    s <- data.frame()
    s <- cbind(z1[,2],z1[,t])
    l <- nrow(s)
    cont<- 1
    d <- which(s[,2] != "Not Available")
    ss<-as.numeric(s[d,2])
    r <- ss[1]
    for(i in 1:length(s[d])){
        if(ss[i] < r){
            r<-ss[i]
        }
    }
    res <- which(as.numeric(s[d,2])==r)
    fn <- s[d,1]
    fn1<-order(fn[res])
    fn2<-fn[res]
    fn2[fn1[1]]
    
}

mejor("MD","neumonia")