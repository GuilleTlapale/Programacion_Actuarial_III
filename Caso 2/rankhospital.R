
setwd("C:/Users/guill_000/Documents/Programacion_Actuarial_III/Caso 2")

rankhospital <- function(estado, resultado, num = "mejor")  {
    
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
            else{ t <- 23 }
        }
    }
    
    z <- split(outcome, outcome$State)
    z1 <- z[[estado]]
    s <- data.frame()
    s <- cbind(z1[,2],z1[,t])
    d <- which(s[,2] != "Not Available" )
    
    if(num == "mejor") { num <- 1 }
    if(num == "peor") { num <- length(s[d])}
    else if (num > length(s[d])) { return("NA")}
    #if(is.integer(num)==F ){stop("Solo enteros positivos, mejor y peor")}
    
    ss<-order(as.numeric(s[d,2]))
    fn <- s[d,1]
    fnt <- s[d,2]
    fns <- fn[ss]
    fn2<-fnt[ss]
    i <- 0
    while (fn2[i+1] != fn2[num]){
        i <- i + 1
    }
    res <- which(fn2==fn2[num])
    fn1<-order(fns[res])
    fns[res[fn1[num-i]]]
    
}

source("rankhospital.R")
rankhospital("MN","ataque",5000)
