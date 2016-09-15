for(ii in 1:9){cat("\n")ii),}
ii
ii<-1:9
ii
for(ii in 1:9){
  cat("\n")
  if (ii==9){
    cat("*")
   }
  }
#n is enter  #need } before cat statment
#exercise2
for(ii in 1:9){
  cat("*")
  if (ii!=9){
    cat("&")
  }
}
#exercise3
dogs <- 10;
for (i in 1:5){
  dogs <- dogs + 1; 
} 
#the initial is 10, the first loop adds 1 so 10+1=11,11+1=12, 12+1=13,13+1=14, 14+1=15 for the last loop
meatloaf <- 0; 
for (i in 5:9){
  meatloaf <- meatloaf - i + 1;
  cat(meatloaf) 
#the first loop is 0-5+1= -4, -4-6+1=-9,-9-7+1=-15,-15-8+1=-22,last loop -22-9+1=-30
  bubbles <- 12;
  for (i in -1:-4){
    bubbles <- i;
  }
  #first loop starts with 12 and becomes -1, then -2, -3, ends with -4
  #Exercise4
  years <- c( 2015, 2016, 2018, 2020, 2021)
  for(ii in 1:length(years)){
    if(years[ii] %% 2 == 0){
      cat(years[ii], 'Hooray, congressional elections!', sep = '\t', fill = T)
      
    } 
    if(years[ii] %% 4 == 0){
      cat(years[ii], 'Yay, presidential elections!', sep = '\t', fill = T)
    }
  }
#Exercise5
  bankAccounts <- c(10, 9.2, 5.6, 3.7, 8.8, 0.5);
  interestRate <- 0.0125; compounded<- rep(1,6)
  for (i in 1:length(bankAccounts)) {
    compounded[i] <- interestRate*bankAccounts[i] + bankAccounts[i]; }
  compounded

#Exercise6
  bankAccounts <- c(10, 9.2, 5.6); #define bank accounts here
  interestRate <- 0.0525;   
  house <- c(4.8, 3.8, 5.7); #deduct
  food<- c(3.5, 4.3, 5.0);    #deduct
  fun <- c(7.8, 2.1, 10.5);  #deduct
  #and incomes (through TAships) of 
  income <- c(21, 21, 21); #add this
  
  for (j in 1:5) {
    for (i in 1:length(bankAccounts)) {bankAccounts[i]-house[i]-food[i]-fun[i]+income[i]*(1+interestRate)
      #step 1 modify bankAccounts so that amounts reflect income and expenses
      #step 2 get calculate interest and add to accounts from step 1
      #you can actually use the line you have already written if you
      #modify amounts in bankAccounts directly in step 1
    }
#Exercise7

    house <- c(4.8, 3.8, 5.7); 
    food<- c(3.5, 4.3, 5.0); 
    fun <- c(7.8, 2.1, 10.5); 
    
    #and incomes (through TAships) of 
    
    income <- c(21, 21, 21);
    
years<- c(2015,2016,2017,2018,2019,2020)
  for (j in 1:6) {
  if (years[j]%%2==1) {
    bankAccounts[1]=bankAccounts[1]+5000
    bankAccounts[3]=bankAccounts[3]+5000

    for (i in 1:length(bankAccounts)) {bankAccounts[i]-house[i]-food[i]-fun[i]+income[i]*(1+interestRate)     
    }
  }
#Exercise8

xsum<-0    
x<-1
while (x<=17){
  (xsum=xsum+x)
  x=x+1
}

#Exercise9

fun<-function(x) {
  if (x<=-1){
    cat("small")
    }
else if (x>-1&&x<1){
    cat("medium")
  }
else{
  cat("big")
}
}


    
    
 
  