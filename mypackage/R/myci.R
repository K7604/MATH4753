#' function that will create a 95% confidence interval for the mean from a single sample x
#' @param x    the mean
#' @return    The 95% confidence interval
#' @examples
#' myci(x)
#' @export

myci = function(x){
  left=mean(x)-qt(1-0.05/2,length(x)-1)*(sd(x)/sqrt(length(x)))
  right=mean(x)+qt(1-0.05/2,length(x)-1)*(sd(x)/sqrt(length(x)))
  return(list(left,right))
}
