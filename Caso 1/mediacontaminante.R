
setwd("C:/Users/guill_000/Documents/Programacion_Actuarial_III/Caso 1/specdata")
mediacontaminante <- function(directorio,contaminante,id=1:332){   
    
    id2<-vector("character")
    x<-vector("numeric")
    
    for (i in id){ 
        if (i>=1 && i<10){ id2[i] <- paste("00",i,".csv", sep="") } 
         else { if (i>=10 && i<100){ id2[i] <- paste("0",i,".csv", sep="") } 
            else { id2[i] <- paste(i,".csv", sep="") } }
        
        y<-read.csv(id2[i])
        z<-cbind(y[,contaminante])
        x<-rbind(x,z)
        mediacont <- mean(x,na.rm=TRUE)
    }
    mediacont
}

#ejemplo:
mediacontaminante("specdata","nitrate",007)   



