#' This function generate a custom size sample, and barplot the probablity. It also display the number of appearance if flag = TRUE
#' @param iter  number of iterations
#' @param n     number of items to choose from
#' @param p     probablity e.g. 0.5
#' @param flag  Default False, not displaying the generated table
#' @return
#' @examples
#' mybin(100,10,0.7) 100 iterations, from 1 to 10, with 0.7 probablity
#' @export

mybin=function(iter,n, p, flag=FALSE){
  sam.mat=matrix(NA,nr=n,nc=iter, byrow=TRUE)
  succ=c()
  for( i in 1:iter){
    sam.mat[,i]=sample(c(1,0),n,replace=TRUE, prob=c(p,1-p))
    succ[i]=sum(sam.mat[,i])
  }
  succ.tab=table(factor(succ,levels=0:n))
  if(flag==TRUE){
    print(succ.tab)
  }
  barplot(succ.tab/(iter), col=rainbow(n+1), main="Binomial simulation", xlab="Number of successes")
  print(succ.tab/iter)
}
