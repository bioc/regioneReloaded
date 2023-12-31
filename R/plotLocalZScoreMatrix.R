#' Plot Local Z-Score Matrix
#'
#'
#' Plot Local Z-Score Matrix of associations/correlations stored in a [multiLocalZScore-class] object.
#'
#' @usage plotLocalZScoreMatrix (mLZ, lineColor = NA, colMatrix = "default",
#' matrix_type = "association", maxVal = "max", main = "", labSize = 6,
#' revert = FALSE, highlight = NULL, highlight_size = 2.5, highlight_max = FALSE,
#' smoothing = FALSE, ...)
#'
#' @inheritParams plotCrosswiseMatrix
#'
#' @param mLZ an object of class [multiLocalZScore-class] or a matrix
#' @param labSize numeric, size for the plot labels. (default = 6)
#' @param revert logical, if TRUE reverts the order of the plotted elements. (default = FALSE)
#' @param highlight character, vector indicating the region set names to highlight by adding labels pointing to the 0 shift position (default = NULL)
#' @param highlight_size numeric, size of the highlight labels. (default = 2.5)
#' @param highlight_max logical, if TRUE the highlight labels are placed at the maximum local z-score value instead of the 0 shift position. (default = FALSE)
#' @param smoothing logical, if TRUE the [stats::smooth.spline] function will be applied to the local z-score profile. (default = FALSE)
#' @param ...  further arguments to be passed to other methods.
#'
#' @return Returns a ggplot object.
#'
#' @seealso [multiLocalZscore] [makeLZMatrix] [multiLocalZScore-class]
#'
#' @examples
#'
#' data("cw_Alien")
#'
#'
#'
#' @import ggplot2
#' @importFrom ggrepel geom_label_repel
#' @importFrom reshape2 melt
#' @importFrom stats quantile
#' @importFrom RColorBrewer brewer.pal
#' @importFrom methods hasArg
#' @importFrom stats smooth.spline
#' @importFrom stats aggregate
#'
#' @export plotLocalZScoreMatrix

plotLocalZScoreMatrix <- function(mLZ,
                                  lineColor = NA,
                                  colMatrix = "default",
                                  matrix_type = "association",
                                  maxVal = "max",
                                  main = "",
                                  labSize = 6,
                                  revert = FALSE,
                                  highlight = NULL,
                                  highlight_size = 2.5,
                                  highlight_max = FALSE,
                                  smoothing = FALSE,
                                  ...) {
  # Check mLZ object
  stopifnot("mLZ is missing" = methods::hasArg(mLZ))
  stopifnot("mLZ needs to be a multiLocalZScore object" = {
    methods::is(mLZ, "multiLocalZScore") | methods::is(mLZ, "matrix")
  })
  stopifnot("The matrix slot of mLZ is empty, run first makeCrosswiseMatrix()" = !is.null(mlzsMatrix(mLZ)[[1]]))

  # Check arguments
  stopifnot("Invalid matrix_type, choose 'association' or 'correlation'" = matrix_type %in% c("association", "correlation"))
  stopifnot("maxVal has to be a numerical value, 'max' or NA" = {
    is.na(maxVal) | is.numeric(maxVal) | maxVal == "max"
  })

  if (matrix_type == "association") {
    GM <- t(getMatrix(mLZ))
    title <- "Association Matrix"

    if (is.na(maxVal)){
      maxVal<- stats::quantile(abs(GM),.95)
    }

    if (maxVal=="max"){
      maxVal<-max(c(abs(max(GM)),abs(min(GM))))
    }


    if(revert == TRUE){
      GM <-GM[rev(rownames(GM)), , drop = FALSE]
    }
  }

  if (matrix_type == "correlation") {
    GM <- mlzsMatrix(mLZ)$LZM_cor

    title <- "Correlation Matrix"
    maxVal <- 1
  }

  if (length(colMatrix)== 1){
    if (colMatrix == "default") {
      colMatrix <-
        rev(c(rev(RColorBrewer::brewer.pal(9, "PuBuGn")),
              RColorBrewer::brewer.pal(9, "YlOrRd")))

    }
  }

  DF <- reshape2::melt(GM, varnames = c("X", "Y"))

  if (smoothing == TRUE){
    smth <- stats::smooth.spline(DF$value)
    DF$value <- smth$y
  }


  p <- ggplot2::ggplot(DF, ggplot2::aes_string(x = "X", y = "Y")) +

    ggplot2::geom_tile(ggplot2::aes_string(fill = "value"), color = lineColor) +
    ggplot2::scale_fill_gradientn(
      colours = rev(colMatrix),
      limits = c(-maxVal, maxVal),
      oob = scales::squish
    )  +
    ggplot2::theme(
      axis.text.x = ggplot2::element_text(
        angle = 90,
        size = 6,
        hjust = 0.95,
        vjust = 0.2
      ),
      axis.text.y = ggplot2::element_text(size = labSize)
    ) +
    ggplot2::labs(
      subtitle = title,
      title = main,
      caption = mlzsParam(mLZ)$ranFUN
    )

  if (!is.null(highlight)) {
    if (highlight_max) {
      DF_label <- DF[DF$Y %in% highlight, , drop = FALSE]
      DF_label <- merge(stats::aggregate(value ~ Y, data = DF_label, FUN = max), DF_label)
      DF_label <- DF_label[order(DF_label$Y), , drop = FALSE]
      DF_label <- DF_label[!duplicated(DF_label$Y), , drop = FALSE]
    } else {
      DF_label <- DF[DF$Y %in% highlight & DF$X == 0, , drop = FALSE]
    }
    p <- p + ggrepel::geom_label_repel(data = DF_label, ggplot2::aes_string(label = "Y"), max.overlaps = Inf, size = highlight_size,
                              min.segment.length = 0, xlim = c(0.4 * max(DF$X), NA),
                              segment.curvature = -0.1,
                              segment.ncp = 3,
                              segment.angle = 20)
  }
  p <- p + ggplot2::geom_vline(xintercept = 0, linetype = "dotted", color = "black", alpha = 0.5)
  return(p)
}




