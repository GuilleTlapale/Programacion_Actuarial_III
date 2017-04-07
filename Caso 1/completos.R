
setwd("C:/Users/guill_000/Documents/Programacion_Actuarial_III/Caso 1/specdata")
completos <- function(directorio,id=1:332){ 

  id3 <- vector("character")
  data <- data.frame(id="",nobs="")
  contador <- 0
  x2 <- ""
  x3 <- ""
  for (i in id){
    if (i>=1 && i<10){ id3[i] <- paste("00",i,".csv", sep="") } 
    else { if (i>=10 && i<100){ id3[i] <- paste("0",i,".csv", sep="") } 
      else { id3[i] <- paste(i,".csv", sep="") } }
    
    y <- read.csv(id3[i])
    z <- cbind(y[,2:3])
    
    todos <- complete.cases(z)
    m <- z[todos,]
    n <- nrow(m)
    
    if (contador=0){ 
      x2 <- i
      x3 <- n
      }
    else { if (contador>0){
    x2 <- c(a,i)
    x3 <- c(b,x1)
    }}
    contador <- contador+1
    a <- x2
    b <- x3
   } 
  data <- data.frame(id=x2,nobs=x3)
  data
}  

#Ejemplo
completos("specdata", 7)
