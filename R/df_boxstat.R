#' Generate box stats (nrows,ncols) for a dataframe.
#'
#' @param df A dataframe
#' @return The dataframe containing stats(nrows,ncols)
#' @examples
#' df_boxstat(data.frame(x=c(1,2,3),y=c("a","b","c")))
#' df_boxstat(mtcars)
df_boxstat <- function(df) {
  rslt <- rbind(data.frame(dimension="nrows",value=nrow(df)),
                data.frame(dimension="ncols",value=ncol(df)))
  rslt$dimension <- as.character(rslt$dimension)
  rslt
}
