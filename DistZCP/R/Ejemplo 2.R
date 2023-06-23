# Un rancho tiene 2 lotes de animales n1:250 y n2:350 respectivamente,
#con las mismas condiciones y misma nutrición, pero se hizo la
#observación que del primer corral x1 fueron 170/250 no presentaron garrapatas
#y del segundo corral x2 fueron 250/300 las que no presentaron garrapata.
#La pregunta y las hipótesis a realizar son las siguientes:
#  H0: p1=p2 (la proporción de inferctadas X1
#    no interviene de la proporción lograda por el X2)
#  Ha: p1≠p2 (la proporción deinfectadas  X1
#    si interviene en la proporción lograda con el X2)
x1=170
n1=250
x2=250
n2=300
resultado_zetaJJ2 <- Z(170, 250, 250, 300)
print(resultado_zetaJJ2)

#El resultado nos arroja un resultado mejor al Z tabular que escogimos
#de nuevo (1,96 al 5%), dandonos -479.01 (-4.7) lo que nos dice que
#se vuelve a rechazar la hipótesis alternativa y se acepta hipótesis nula.
