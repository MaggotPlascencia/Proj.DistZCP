# Un lote de 300 vacas fueron inseminadas
#por un inseminador x1 y otro lote de 200 
#vacas por otro inseminador x2, de los cuales
#se obtuvieron los siguientes resultados
x1=220
n1= 300
x2=150
n2= 200

#Ahora lo unico que hacemos es meter los valores
#en la función y obtener el valor de Z calculado
#para comparar con Z tabulado que yo tome como 
#valores de la tabla que fue (1,96 al 5% de confianza)
#  H0: p1=p2 (la proporción de preñez con el X1
#    no difiere de la proporción lograda por el X2)
#  Ha: p1≠p2 (la proporción de preñez con el X1
#    difiere de la proporciónlograda con el X2)


resultado_zeta <- Z(220, 300, 150, 200)
print(resultado_zeta)

#Como podemos observar, no existe diferencia significativa ya que Z
#calculada es menor que Z teórica (1,96 al 5%); por tanto, la hipótesis alternativa se 
#rechaza y aceptamos la hipótesis nula. Mi resultado fue -56.11512 (-0.56) que nos
#indica que la eficiencia de los inseminadores es igual. 

