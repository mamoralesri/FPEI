# diagrama de puntos 

# introducir datos de la página 4, resistencia a la tensión del
# mortero
# modificado 
exp1<-c(16.85,16.40,17.21,16.35,16.52,17.04,16.96,17.15,16.59,16.57)
stripchart(exp1,pch=21) 
# sin modificar 
exp2<-c(17.50,17.63,18.25,18.00,17.86,17.75,18.22,17.90,17.96,18.15)
stripchart(exp2,pch=20) 

z=c(exp1,exp2) 
z
stripchart(z,pch=20) 

# para diferenciar los datos 
grupos<-c(rep('Exp1',10),rep('Exp2',10))
datos=data.frame(z,grupos)
datos

stripchart(z~grupos,pch=c(21,20),at=c(1.5,1.5)) 
legend("top",legend=c("Exp1","Exp2"),pch=c(21,20),horiz = TRUE,bty='n') 

# datos de resistencia a la tensión 

t1.1<-c(105,221,183,186,121,181,180,143,
        97,154,153,174,120,168,167,141,
        245,228,174,199,181,158,176,110,
        163,131,154,115,160,208,158,133,
        207,180,190,193,194,133,156,123,
        134,178,76,167,184,135,229,146,
        218,157,101,171,165,172,158,169,
        199,151,142,163,145,171,148,158,
        160,175,149,87,160,237,150,135,
        196,201,200,176,150,170,118,149)

hist(t1.1,breaks =seq(70,250,20),
     right =FALSE,ylim=c(0,25),
     labels = TRUE,main="",ylab="Frecuencia",
     xlab="Resistencia") 

histo=hist(t1.1,breaks =seq(70,250,20),
     right =FALSE,ylim=c(0,25),
     labels = TRUE,main="",ylab="Frecuencia",
     xlab="Resistencia") 

library(agricolae) 

print(table.freq(histo))  

min(t1.1)

R=max(t1.1)-min(t1.1)
K=9
A=R/K

seq(min(t1.1),max(t1.1),by=A) 

histo=hist(t1.1,breaks =seq(min(t1.1),max(t1.1),by=A),
           right =FALSE,ylim=c(0,25),
           labels = TRUE,main="",ylab="Frecuencia",
           xlab="Resistencia") 

print(table.freq(histo))

