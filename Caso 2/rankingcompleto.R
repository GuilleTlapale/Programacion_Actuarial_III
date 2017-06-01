setwd("C:/Users/guill_000/Documents/Programacion_Actuarial_III/Caso 2")

rankingcompleto <- function(resultado, num = "mejor")  {
    
    
    resultado <- as.character(resultado)
    
    outcome <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
    
    
    
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
    
    s <- data.frame()
    s <- cbind(outcome[,2],outcome[,7],outcome[,t])
    
    x <- s[,2]
    x1 <- factor(x)
    x2 <- attr(x1,"levels")
    
    sol <- data.frame(matrix(nrow = length(x2), ncol = 2))
    
    for (i in 1:length(x2)){ 
        dd <- which(s[,2]==x2[i] & s[,3] != "Not Available")
        if(num == "mejor") { num <- 1 }
        if(num == "peor") { num <- length(s[dd])}
        #if(is.integer(num)==F ){stop("Solo enteros positivos, mejor y peor")}
        if(num > length(s[dd])) { 
            sol[i,1] <- "NA"
            sol[i,2] <- x2[i]
        }
        else {
            
            fnt <- s[dd,3]
            fn <- s[dd,1]
            ss<-order(as.numeric(fnt))
            fns <- fn[ss]
            fn2<-fnt[ss]
            res <-  which(fn2==fn2[ss[num]])
            
            if (length(res)!=0){
                
                j <- 0
                while (fn2[j+1] != fn2[num]){
                    j <- j + 1
                }
                res <- which(fn2==fn2[num])
                fn1<-order(fns[res])
                
                sol[i,1] <- fns[res[fn1[num-j]]]
                sol[i,2] <- x2[i]
            }
            else{
                sol[i,1] <- "NA"
                sol[i,2] <- x2[i]
            }
            
        }
    }
    
    rownames(sol) <- x2
    colnames(sol) <- c("hospital","state")
    format( sol[,1],justify="left")
    sol
}

source("rankingcompleto.R")
rankingcompleto("ataque",20),10)
