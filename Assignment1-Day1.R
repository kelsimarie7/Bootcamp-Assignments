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
  
  