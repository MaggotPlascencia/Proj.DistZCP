#'Calculo de proporciones de dos grupos mediante Distribucion Z
#'
#'#Realiza el calculo de las proporciones de
#'dos grupos independientes
#'
#' @param x1 numero de acertados en un grupo 1
#' @param n1 numero total de la poblacion de muestra 1
#' @param x2 numero de acertados en un grupo 2
#' @param n2 numero total de la poblacion de muestra 2
#' @return El resultado a comparar con las tablas Z y comprobar si infiere o no, desarrollando los parametros de cada grupo dentro de la función.
#' @export
Z <- function(x1, n1, x2, n2){
  resultados <- calcular_proporciones(n1, x1, n2, x2)
  proporcion1 <- resultados$proporcion1
  proporcion2 <- resultados$proporcion2
  pq<-(0.25)
  zetona <- (proporcion1 - proporcion2) / (sqrt(pq/n1)+(pq/n1))
  return(zetona)
}

#Para el primer grupo lo que haremos es calcular
#la proporcion del primer grupo
n1<- (300)
x1<- (220)
inseminadas1<- function (a,b){
  datos<- x1/n1*100
  return(datos)
}
proporcion1<- inseminadas1(x1,n1)
print (proporcion1)

#Para el segundo grupo utiizaremos la misma formula solo con datos
#distintos propios del grupo.
n2<- (200)
x2<- (150)
inseminadas2<- function (c,d){
  datos2<- x2/n2*100
  return(datos2)
}
proporcion2<- inseminadas2(n2, x2)
print (proporcion2)

#Esta funciòn es unicamente para que al momento de
#agregar valores de x1, n1, x2, n2 me arroje las
#proporciones de ambos en forma de lista.

calcular_proporciones<-function(n1,x1,n2,x2){
  inseminadas1<-function(a,b){
    datos1<-x1/n1*100
    return(datos1)
  }
  inseminadas2<-function(c,d){
    datos2<-x2/n2*100
    return(datos2)
  }
  proporcion1<-inseminadas1(n1,x1)
  proporcion2<-inseminadas2(n2,x2)
  resultados<-list(proporcion1=proporcion1, proporcion2=proporcion2)
  return(resultados)
}
resultados<-calcular_proporciones(300, 220, 200, 150)
print(resultados)

##Esta formula mete las variables en la formula
#del metodo que hago dandome el resultado que necesito para analizar
Zetita<- function(a,b){
  pq=0.25
  zeta<- (proporcion1-proporcion2)/(sqrt(pq/n1)+(pq/n1))
  return(zeta)
}
dismiss<-Zetita(proporcion1,proporcion2)
print(dismiss)

#Última funcion que realiza el trabajo de todas las
#funciones creadas y da el resultado directo del
#número von el que rechazo o confirmo hipótesis con las tablas Z.
x1=220
n1= 300
x2=150
n2= 200
Z <- function(x1, n1, x2, n2){
  resultados <- calcular_proporciones(n1, x1, n2, x2)
  proporcion1 <- resultados$proporcion1
  proporcion2 <- resultados$proporcion2
  pq<-(0.25)
  zetona <- (proporcion1 - proporcion2) / (sqrt(pq/n1)+(pq/n1))
  return(zetona)
}

resultado_zeta <- Z(x1,n1,x2,n2)
print(resultado_zeta)

