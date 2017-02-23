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





