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


histo<-hist(t1.1,breaks=seq(70,250,by=20),right = FALSE,labels=TRUE,ylim=c(0,25))

library(agricolae) 

print(table.freq(histo))

names(histo)

fi=histo[['counts']]
Mi=histo[['mids']]
n=sum(fi)
Ma=sum( fi*Mi )/n    

( sum(Mi**2*fi) - n*Ma^2 )/(n-1) 

O=sort(t1.1) 

n=length(t1.1) 

k=0.25 

n*k # es entero

( O[n*k] + O[n*k+1] )/2 

k=0.5

n*k

( O[n*k] + O[n*k+1] )/2 

k=0.75

n*k

( O[n*k] + O[n*k+1] )/2 


k=0.31 
n*k # no es entero 

O[ceiling(n*k)] 

quantile(t1.1) 

quantile(t1.1,type = 2)  

boxplot(t1.1)

Q3=quantile(t1.1)[4]
Q1=quantile(t1.1)[2]

Q1-1.5*(Q3-Q1)
Q3+1.5*(Q3-Q1)
abline(h=97,col='green')
abline(h=229,col='green')

