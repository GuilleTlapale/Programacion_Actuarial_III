
setwd("C:/Users/guill_000/Documents/Programacion_Actuarial_III/Caso 1/specdata")
corr <- function(directorio,horizonte=0){
  
  id4<-vector("character")
  resul<-vector("numeric")
  o<-vector("numeric")
  p<-data.frame()
  
  for (i in 1:332){  
    if (i>=1 && i<10){ id4[i] <- paste("00",i,".csv", sep="") } 
    else { if (i>=10 && i<100){ id4[i] <- paste("0",i,".csv", sep="") } 
      else { id4[i] <- paste(i,".csv", sep="") } }
    
    h<-read.csv(id4[i])
    j<-cbind(h[,2:3])
    todos<-complete.cases(j)
    x<-j[todos,]
    x1<-nrow(x)
    
    if (x1>=horizonte){ p<-cor(x) } 
    o<-p[1,2]
    resul<-c(resul,o)
  }  
  resul
}

#ejempplo
corr("specdata",7)
