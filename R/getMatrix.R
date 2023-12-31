#' Get Matrix
#'
#' @description
#'
#' Returns the matrix from an [genoMatriXeR][genoMatriXeR-class] or [multiLocalZScore][multiLocalZScore-class] object.
#'
#' @usage getMatrix(rR)
#'
#' @param rR genoMatriXeR or multiLocalZScore object
#'
#' @return a numerical matrix from a
#'
#' @examples
#'
#' data("cw_Alien")
#'
#' cw_Alien_ReG <- makeCrosswiseMatrix(cw_Alien_ReG)
#' mtx <- getMatrix(cw_Alien_ReG)
#'
#' mtx
#'
#' @seealso [genoMatriXeR][genoMatriXeR-class], [multiLocalZScore][multiLocalZScore-class], [makeCrosswiseMatrix], [makeLZMatrix]
#'
#' @examples
#'
#' data("cw_Alien")
#'
#' cw_Alien_RaR <- makeCrosswiseMatrix(cw_Alien_RaR)
#' GM <- getMatrix(cw_Alien_RaR)
#'
#' GM
#'
#' @importFrom methods is
#' @importFrom methods hasArg
#'
#' @export getMatrix
#'

getMatrix <- function(rR) {

  stopifnot("rR is missing" = methods::hasArg(rR))
  stopifnot("rR must be of class genoMatriXeR or multiLocalZScore" = {
    methods::is(rR , "genoMatriXeR") | methods::is(rR , "multiLocalZScore")
  })

  if (methods::is(rR, "genoMatriXeR")) {
    if (is.null(rR@matrix[[1]])){
      warning("no matrix computed for genoMatriXeR object, run first makeCrosswiseMatrix()")
    }
    GM <- gmxrMatrix(rR)$GMat
  }

  if (methods::is(rR, "multiLocalZScore")) {
    if (is.null(rR@matrix[[1]])){
      warning("no matrix computed for multiLocalZScore object, run first makeLZMatrix()")
    }
    GM <- mlzsMatrix(rR)$LZM
  }

  return(GM)
}


