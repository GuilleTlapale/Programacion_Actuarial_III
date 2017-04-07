#Clase del 16/febrero/2017
# Ctrl r para correr 
# <- Simbolo de asignación
# ESC para saltar la instrucción 
x<-1
print(x)
x
# Ctrl l para borrar en la consola
msg<- "Hola"
msg
X<- #Esta expresión está incompleta"
# El nombre de una variable no contiene espacios 
# escoba para limpiar las variables (Values)
  
  #Operador (:)
#secuencia de números, vectores x<-1:20
x<-1:50
x
  #Character(letras, num, simbolos)
  #Numeric(números reales)
  #Integer(enteros) 
  #complex(números complejos)
  #logical(Booleanos; verdadero y falso o 0 y 1)
#Vectores:todos los elementos de un vector son del mismo tipo

# ? para investigar algo; ?_____ (lo que queremos saber)
#FUNCION VECTOR, para crear un vector 
# se pone L para ser tratado como entero, ej; 1L
a<-1
b<-1L
# funcion "Class()" para saber que tipo de clase es
#R sabe de la existencia de infinito y la división entre 0
#Función "attributes()" para saber los atributos de un objeto
# CREACIÓN DE VECTORES
 #con la función vecto
mi_vector<-vector("integer",5)

#cLASE 17/02/2017
# La función C sirve para crear vectores 
x1<- c(0.5,0.6)
x2<-c(TRUE,FALSE)
x3<-c(T,F)
x4<-c("a","b","c")
x5<- 9:29
x6<-c(2+1i,3-5i,3.14+1.186i)
# con la función vector te manda ceros, por eso es más útil la función c
# toma a 1.7 como texto y no como número
y1<-c(1.7,"a")
# toma a true como númerico y no como booleano
y2<-c(TRUE,2)
# toms a true como texto
y3<-c("a",TRUE)
# toma la clase dominante(caracteres>complejo>numerico>enteros>booleano)
#secuencia de enteros
x<-c(0:6,0.5)
#Secuencia de números 
as.numeric(x)
#Secuencia booleana
as.logical(x)
#Secuencia de caracteres
as.character(x)
y<-c("a","b","c")
as.numeric(y)
as.logical(y)
as.complex(y)
#NA= valor faltante
# Números fraccionarios los cosionamos a enteros
q<-c(3.5,2.1,6.8,9.0,5.5)
#Secuencia de enteros
as.integer(q)
#LISTAS:son una forma especial de vectore, nos van a permitir almacenar elementos de diferentes clases.
w<-list(1,"a",TRUE,1+4i)
w
e<-list(1,"a",TRUE,1+4i,1:100)
e
#MATRICES:son vectores con un tributo adicional que es la DIMENSIÓN
#Se usa la función matrix(nrow=N°filas,ncol=N°columnas)
?matrix
m<-matrix(nrow =2,ncol=3)
m
dim(m)
# la matrix tiene un atributo adicional que es dim
attributes(m)
#Se puede omitir poner "nrow=" y "ncol" y solo poner el valor

m1<-matrix(1:6,nrow=2,ncol=3)
m1
#por ordena los datos or columnas
#para ordenarlos por filas:
m2<-matrix(1:6,2,3,byrow=TRUE)
m2
m3<-1:10
m3
dim(m3)<-c(2,5)
m3
dim(m3)<-c(5,2)
m3

#pegar columnas(cbind()):
a<-1:3
b<-10:12
cbind(a,b)
#pegar filas (rbind())
rbind(a,b)

#FACTORES:se utilizan para representar datos categoricos
          #variables cualitativas(ej:sexo, colores,ciudad de origen, días de semana)
          #no necesariamente estan ordenados
t<-factor(c("yes","yes","no","yes","no"))
t
table(t)
unclass(t)
#el orden que toma es alfabetico, por eso NO=1 Y yes=2

t1<-factor(c("yes","yes","no","yes","no"),
+           levels=c("yes","no"))
t1

#clase 21/02/2017
#VALORES FALTANTES
 #NA=no aplica; no hay valor
 #NaN=not an number;(no númerico) hay algo pero no se puede expresar de manera numerica
 # is.na() se utiliza para saber si algun objeto es NA
 # is.nan()""

j<-c(1,2,NA,10,3,NaN)
is.na(j)
is.nan(j)

#Data Frames
 #Se utilizan para almacenar datos tabulares
 #pueden ser de clases diferentes pero cada uno de los elementos tiene que ser de la misma longitud
?data.frame
#foo=una etiqueta;bar=
d<-data.frame(foo=1:4,bar=c(T,T,F,T))
d
# para contar las filas y colmnas:
nrow(d)
ncol(d)

d<-1:3
names(d)
names(d)<-c("foo","bar","biz")
names(d)
#NAMES:las  listas tambien pueden tener nombre
 #con nombre
d2<-list(a=1,b=2,c=3)
d2
 #sin nombre
d3<-list(1,2,3)
d3
 #para ponerle nombre a la matriz:
mt<-matrix(1:4,2,2)
mt
dimnames(mt)
dimnames(mt)<-list(c("a","b"),c("C","d"))
mt

#LECTURA DE DATOS 
 #Existen algunas funciones para leer datos en R,como:
  #read.table,read.csv; para leer datos en tabas(excel,Pdf,internet(finance yahoo))
  #readLines; para leer lineas de texto(word)
  #source; para leer archivos de código en R(opuesto a dump)
  #dget;"" (opuesto adput)
  #load;para leer en espacios de trabajos guardados
  #unserialize; para leer un objetos simple en R en formato binario
#ESCRITURA DE DATOS
 #Exportar datos a archivos
  #write.table
  #writeLines
  # dump
  #...... etc
?read.table
# la funcion read.table es una de las más utilizadas
 #file; el nombre de un archivo o link
 #header; booleano indicando que el archivo tiene encabezados=true.
 #sep; una cadena indicandocomo se separan las columnas(, . ; etc)(sep=",")
 #colClasses; vector de caracteres que indica la clase de cada columna en los dato (colclases=c("character","character","integer"....))
 #nrow; numero de filas en los datos(para que solo copie el n° de filas que quiero)
 #comment.char; una cadena indicando el caracter para comentarios(en el caso de R, commentcar=#)
 #skip; el número de lineas a omitir desde el inicio
 #stringsAsFactors; los caracteres deberian ser considerados como factores?
?read.csv
 # corre a read.table con caracteristicas espesificas
  #read.csv(file, header = TRUE, sep = ",", quote = "\"", dec = ".", fill = TRUE, comment.char = "", ...)
  # toma encabezados como true
  # separa las columnas con comas
  # ("")no hay simbolo para comentarios

#BASES DE DATOS GRANDES 
 # para que no se tarde tanto hay que especifiacar lo que mas se pueda
  # comentario= ""
  # tipo de clase

?sapply

#clase 23/02/2017
#calculo de requerimiento de ram
#base de datos de 1,500k filas y 120 columnas todas numéricas
#1,500k x 120 x 8 bytes= 1,440,000k bytes
#2^20 bytes=1mb
#1,440,000k bytes=1,373.29MB=1.34GB

#Función dump y dput(para liberar RAM)
r<-data.frame(a=1,b="a")
dput(r)
#crea un archivo con esa descripcion
dput(r,"r.R")
#mando a llamar a ese archivo
dget("r.R")
r<-dget("y.R")
#getwd(); para saber la direccion de trabajo 
#setwd(); para cambiar la dirección de trabajo 


     #rm()para borar los objetos, variables,
#Funcion dump y source
#Asignacion de objeto
x<-"Programación Actuarial III"
#creo el data frame
y<-data.frame(a=1:10,b="a")
dump(c("x","y"),file="data.R")
source("data.R")

#CLASE 24/02/2017
#Conexiones
str(file)
 #desciption;nombre del archivo
 #open;es un codigo que indica:
con<-url("http://www.fcfm.buap.mx/")
#funcion readLIne para leer 
fc<-readLines(con,7)
fc
#subconjuntos:
 #[ regresa un objeto de la misma clase origunal
 #[[ regresa solo y solo un elemento
r1<-c("a","b","c","d","e")
r1
r1[1]
r1[4]
r1[1:3]
r1[3:5]
r1[6:2]
r1[1,3,5]   #no
r1[1],[3],[5]  #no
r1[1],r1[3],r1[3] #no
r1[c(1,2,3,5)]    #si
r1[r1>"b"]
r1>"b"
# exactamente igual "=="
u<-r1=="c"
u
r1[u]
# no se puede comparar porque son de tamaño distinto los vectores
 # compara(c,d,c,d,c,d,c,d...... )
u2<-r1==c("c","d")
u2
r1[u2]
#lo correcto: ó=|, y=&
u3<-r1=="c"|r1=="d"
u3
r1[u3]


#vamos a crear una lista

l<-list(foo=95:30,bar=0.6)
#muetra como tal la lista
a1<-l[1]
# solo enseña los valores
b1<-l[[1]]
#Usar $= Usar [[]]
c<-l$foo
l["bar"]
l[["bar"]]
u5<-"bar"
l[u5]
l[[u5]]
l$u5
# l$u5 = l[["u5"]]
#toma a u5 como variable y no existe 

#PENDIENTE: checar diapositivas

##CLASE 03/03/2017
 #Remover valores faltantes
airquality
complete.cases(airquality)
sum(complete.cases(airquality))
sum(!complete.cases(airquality))
airquality[complete.cases(airquality),]

x<-airquality[complete.cases(airquality),]
nrow(x)
dim(x)[1]

q<-1:4
y<-6:9
z<-2:3

q+y
q*y
q>2
q>=2
q/y
q+z

a<-matrix(1:4,2,2)
b<-matrix(rep(10,4),2,2)
a
b
a*b
#Para multiplicar matices
a%*%b
b%*%a

#ESTRUCTURAS DE CONROL
#permiten maanejar el flujo de la ejecucuoon de un programa, las más comunes son:
#if,else
#for
#while:se ejecura un cliclo mientras se cumpla una condcion
#repeat:ejecuta un ciclo infinito
 #break
#next
#return

#estuctura del control if-else
#{equivale al then

#}equivale al end if

if (TRUE){
        #instruccion
        #instruccion
        #instruccion
}else {
        #instrucciones
}

#Forma validda
x1<-4
if(x1>3){
    y1<- 10
}else{
    y1<- 0
}
#pero tambien
y1<- if(x1>3){
    10
}else{
    0
}
#estructura del control for:
for(i in 1:10){
      print(i)
}

s<-c("a","b","c","d")
for(i in 1:4){
    print(x[i])
}
for (i in seq_along(x)){
    print(x[i])
}
for(letra in x){
    print (letra)
}
for(i in 1:4) print(x[1])

# los ciclos for pueden ser animados
x<-matrix(1:6,2,3)
for(i in seq_len(nrow(x))){
    for(j in seq_len(ncol(x))){
        print(x[i,j])
    }
}
#CLASE 07/MARZO/2017

contador<-1
while(contador < 10){
      print(contador)
      contador<-contador+1
}

for(i in 0:9){
          print(i)
}

i<-0
while(TRUE&&i<=100000){
          print(i)
          i<-i+1
}

?rbinom
z<-5
contador<-1
while((z>3&&z<10)&& contador<100){
        print(z)
        moneda<-rbinom(1,1,0.5)
        if (moneda==1){
              z<-z+1
        }else{
              z<-z-1
        }
        contador<-contador+1
}
print(contador)

#actividad
z<-5
contador<-1
x<-c()
while((z>=3&&z<=10)&& contador<100){
   x<-c(x,z)
  moneda<-rbinom(1,1,0.5)
  if (moneda==1){
    z<-z+1
  }else{
    z<-z-1
  }
  contador<-contador+1
}
print(contador)
x
#Actividad 2

#set.seed para seudo aleatorios(no son números al azar)
set.seed(1)
len<-c()
for(i in 1:100){
  z<-5
  contador<-1
  x<-c()
  while((z>=3&&z<=10)&& contador<100){
    x<-c(x,z)
    moneda<-rbinom(1,1,0.5)
    if (moneda==1){
      z<-z+1
    }else{
      z<-z-1
    }
    contador<-contador+1
  }
#length= longitud del vector
    len<-c(len,length(x))
}
len 
hist(len)
#clase 14/marzo/2017
   #funcion plot grafica
plot(x,type="l")

#se divide entre 10 para suavisarla
x<-(-30:30)/10
y<-x^2+5

plot(y,type="l")

#estructura break
for(i in 1:50){
      if (i<=25){
            next
      }
      if (i>40){
            break
      }
      print(i)
}

#Crear funciones
  #sumar dos números
  #Usamos FUNCTION para que se guarde como funcion y no como variable
suma2<-function(x,y){
      x+y
}

dump("suma2",file = "suma2.R")
source("suma2.R")


#ejercicio
d<-data.frame(foo=1:4,bar=1:4)
d
nrow(d)
ncol(d)

x<-()
for (i in i<=nrow(d))
  x<-x+y



promedio<-function(x,y){
  x/y
}
# no salio el ejercicio

promedioCol<-function(x,quitarNA=T){
    Cols<-ncol(x)
    v<-c()
    for(i in 1:Cols){
          #sum(x[,i])/nrow(x[,i])
          v<-c(v,mean(x[,i],na.rm=quitarNA))
    }
    v
}

promedioCol(airquality)


#clase 17 /marzo/ 2017
 #evaluación perezosa

#el arumento "..."


x<-(-300:300)/100
y<-x^2+5
plot(x,y, type="l")

miplot<-function(x,y,ana="l",...){
    plot(x,y,type=ana,...)

}
miplot(x,y,main="parábola",sub="y=x^2+5",
       xlab="Horizontal", ylab="Vertical",
       col="red")
?paste

#Scoping Rules
  #lm
  #lm<-function(x){x*x}
  #lm 
  #rm(lm)
  #lm 

f<-function(x,y){
    x^2+y/z
}

hacer.potencia<- function(n){
    potencia<-function(x){
      x^n
    }
    potencia
}

#clase 21/ marzo/ 2017
    #sangria y así
    #Fechas
x<-as.Date("1970-01-01")
x
unclass(x)
# es =0 porque han pasado 0 dias
unclass(as.Date("1970-01-02"))
# es =1 porque han pasado 1 dias desde la fecha inicial

x<-as.Date("1996-04-29")
unclass(x)
y<-as.Date("1995-05-14")
unclass(y)
unclass(y-x)

#funciones de ciclo

lapply
function(X,FUN,...)
{
    FUN<-match.fun(FUN)
    if(!is.vector(X)||is.object(X))
        X<-as.list(X)
    .Internal(lapply(X,FUN))
}
#ejemplo de la funcion lapply
x<-list(a=1:5,b=rnorm(10000))
lapply(x,mean)

# otro ejemplo
x<-list(a=1:5,b=rnorm(10),c=rnorm(10,1),d=rnorm(10,2))
lapply(x,mean)
#un ejemplo; variables aleatorias uniformes
x<-1:4
lapply(x,runif)
#ejemplo con más argumentos
x<-1:4
lapply(x,runif,max=15,min=5)

#clase 23/marzo/2017
#sapply
 #regresa un vector o una matriz dependiendo de su Dim
 #o regresa la misma lista que lapply si los elementos tienen distina Dim.
x<-list(a=1:5,b=rnorm(10),c=rnorm(10,3),d=rnorm(10,5))
lapply(x,mean)
sapply(x,mean)

#apply
x<-matrix(rnorm(200),20,10)
apply(x,2,mean)
apply(x,1,sum)

x<- matrix(rnorm(200),20,10)
apply(x,1,quantile,probs=c(0.25,0.75))

# 

a<-array(rnorm(2*2*10),c(2,2,10))
apply(a,c(1,2),mean)
apply(a,c(2,3),mean)

rowMeans(a,dims = 2)

###########clase de 24/marzo/2017
 #install.packeges("swirl")
 #library(swirl")

install_from_swirl("R_Programming")
# se tienen que borrar todas las variables antes de onicciar: rm(list = ls())
# Se tiene que pone swirl() para "abrir el programa"
# Bye pra salir 
#cada que "inicio" tengo que volver a poner mi nombre


    #CLASE 30/MARZO/2017
 #función mapply
list(rep(1,4),rep(2,3),rep(3,2),rep(4,1))
mapply(rep,1:4,4:1)

ld

#Vectoriza una función
    #ruido blanco
noise<-function(n,mean,sd){
    rnorm(n,mean,sd)
}
#sd= desviacion estandar; mean:media O promedio?
noise(5,1,2)
mapply(noise,1:5,1:5,2)
#rnorm= para generar numeros aleatorios
#runir= genera numeros aleatorios uniformes

#funcion tapply
#muestra los resultados en una tabla
x<-c(rnorm(10),runif(10),rnorm(10,1))

f<-gl(3,10)
f

tapply(x,f,mean)
#Da el promedio de los primeros 10 num;prom 10 siguientes....

#simplify=F lo pone como lista
#simplify=T lo pone como data frame


#SPLIT:toma un objeto y crea tantos ....separa por grupos
split(x,f)
lapply(split(x,f),mean)

#clase 31/marzo/1017
library(datasets)
 #ejemplo de función tapply
airquality
 #encontrar la temperatura promedio por mes

tapply(airquality$Temp,airquality$Month,mean,simplify = T)

sapply(split(airquality$Temp,airquality$Month),mean)

split(airquality$Temp,airquality$Month)

#lllll

s<-split(airquality,airquality$Month)
s
lapply(s,function(x) colMeans(x[,1:3],na.rm = T))
sapply(s,function(x) colMeans(x[,1:4],na.rm = T))

# split a más de un nivel
x<- rnorm(10)
f1<-gl(2,5)
f2<-gl(5,2)
f1

f2

interaction(f1,f2)

x
str(split(x,list(f1,f2)))

#MANEJO DE ERRORES
?options
options(error = recover)
read.csv("noexiste")

