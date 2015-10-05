
insurance<-function(x,i,n,m,b,lx){ 
  r=log(1+i)
  j=seq(2,n)
  abar=0.5+sum(lx[x+j]*exp(-r*(j-1))/lx[x])+lx[x+n]/lx[x]*exp(-r*n)/2
  
  j2=seq(2,m+1)
  Abar=1-r*(0.5 + sum(lx[x+j2]*exp(-r*(j2-1))/lx[x],na.rm=T) + lx[x+m]/lx[x]*exp(-r*(m+1))/(1-exp(-r)))
  
  px=b*Abar/abar
  return(px/12)
}
