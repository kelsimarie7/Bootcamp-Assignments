snpsDataFrame=read.table('hapmaps.txt',header=TRUE)


#partA
compute_chisquare=function(x){
  freq=sum(x,na.rm=TRUE)/(2.0*sum(!is.na(x)))
  cnt0=sum(x==0,na.rm=TRUE)
  cnt1=sum(x==1,na.rm=TRUE)
  cnt2=sum(x==2,na.rm=TRUE)
  obscnts=c(cnt0,cnt1,cnt2)
  #print(obscnts)
  n=sum(obscnts)
  expcnts=c((1-freq)^2,2*freq*(1-freq),freq^2)*n
  chisq=sum((obscnts-expcnts)^2/expcnts)
  return(chisq)
}
snps=as.matrix(snpsDataFrame)  #turns data frame into matrix
chisqs=apply(snps,1,compute_chisquare)  #apply function (can for for instead)
pvals=pchisq(chisqs,1,lower.tail=FALSE)  #assigns pvals name to P values you just calculated
#B
signifthres<-0.05
sum(pvals<signifthres)
length(pvals)
(sum(pvals<signifthres))/(length(pvals))#threshold of pvales divided by all of pavales


signifthres<-0.01
sum(pvals<signifthres)
length(pvals)
(sum(pvals<signifthres))/(length(pvals))

signifthres<-0.001
sum(pvals<signifthres)
length(pvals)
(sum(pvals<signifthres))/(length(pvals))


#C

"num_pval"<-length(pvals)  #4014  #shows how many we have (length) and assign new name
num_pval

#D

"exp_pvals"<- seq(1,num_pval,by=1)/(num_pval)  #possible pvalues divided by the total pvalues
exp_pval

#E

sort_pvals<-sort(pvals, decreasing = FALSE)  #sorting all pvals smallest to largest
sort_pvals
head(sort_pvals)

#F

log_sort_pvals<-(-log10(sort_pvals))
log_exp_pvals<- (-log10(exp_pvals))

log_sort_pvals
log_exp_pvals

#G

plot(log_exp_pvals,log_sort_pvals, xlab="-log10(Expected P-value)", ylab="-log10(observed P-value)", pch=19)
abline(0,1,h=5,col=2,lty=2,lwd=2)

#############################
#Part2

#A
zz<-read.table('phenotypes.txt',header=TRUE)  #findingdata, need header=T because it will read header as data (wrong)

#B

quantile(zz$glucose_mmolperL,.25) #  $pulls up what column to use , use quantile function to find 25% below
#4.77

#C

quantile(zz$glucose_mmolperL,.75)  #always LESS, so greater than .25, less than .75

#7.35

#D

hist(zz$glucose_mmolperL,main = "Glucose(mmol/L)")

Lowtail<-quantile(zz$glucose_mmolperL,.25)
Hightail<-quantile(zz$glucose_mmolperL,.75)

abline(v=Lowtail,col=3,lwd=3)     #abline allows for you to create a new line, v= makes vertical, col is color of line, lwd is thickness of line
abline(v=Hightail,col=5,lwd=3)
