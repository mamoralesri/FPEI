m1=c(130,150,145,158,165,140)
m2=c(90,128,205,140,165,160) 

M1b=mean(m1);M1b
M2b=mean(m2);M2b

m1-M1b # diferencias 
(m1-M1b)^2 # diferencias al cuadrado 
sum( (m1-M1b)^2 ) # suma de las diferencias al cuadrado 
n1=length(m1);n1 # numero de datos de la muestra 1
n2=length(m2);n2 # numero de datos de la muestra 2
# varianza de la muestra 1 
sum( (m1-M1b)^2 )/(n1-1)  

m2-M2b # diferencias 
(m2-M2b)^2 # diferencias al cuadrado 
sum( (m2-M2b)^2 ) # suma de las diferencias al cuadrado 
# varianza de la muestra 2 
sum( (m2-M2b)^2 )/(n2-1)  
( sum(m1^2)-n1*M1b^2 )/ (n1-1) 

# Directamente: la forma profesional de calcular la varianza
# 
var(m1)
var(m2)
# desviación estándar, calculada como raíz de la varianza 
sqrt(var(m1))
# desviación estándar: la forma profesional
sd(m1)

# para muestra 2 
var(m2)
sd(m2)

# La mediana  
median(m1)  

# La mediana, usando el algoritmo enseñado en clase 

# si n es par 
( sort(m1)[n1/2] + sort(m1)[n1/2+1] )/2 

# en caso que n sea impar (este no es el caso ) 
# sort(m1)[(n1+1)/2]  





