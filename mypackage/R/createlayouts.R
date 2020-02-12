#' This function create layouts, using layout(matrix())) byrow = TRUE

#' @param x From.
#' @param y To.
#' @param r Number of rows.
#' @param c Number of column.
#' @return The specific layout
#' @examples
#' create4layouts(1,4,2,2)
#' @export

createlayouts=function(x,y,r,c){
  layout(matrix(x:y,nr=r,nc=c,byrow=TRUE))
}

