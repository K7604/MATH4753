#' This function will display the curve, shaded area between the curve and x axis from -∞ to x=a, and calculate the area (probability, P(X<=a)) which is released to the command-line in a lis
#' @param mu    the mean
#' @param sigma the standard variation
#' @param a     x value
#' @return      Graph with shaded region and print Area to screen
#' @examples
#' myncurve(mu=10,sigma=5, a=6)
#' @export

myncurve = function(mu, sigma,a){
  curve(dnorm(x,mean=mu,sd=sigma), xlim = c(mu-3*sigma, mu + 3*sigma))
  #Shaded Area
  xcurve=seq(mu-3*sigma, a, length=1000)
  ycurve=dnorm(xcurve,mean=mu,sd=sigma)
  polygon(c(mu-3*sigma,xcurve,a),c(0,ycurve,0),col="Red")
  # Calculate the area and print it
 prob=pnorm(a,mean=mu,sd=sigma)
  prob=round(prob,4)
  print(paste("Area = ",prob, sep=""))
}
