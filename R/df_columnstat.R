#' Generate column stats (column name, type(class), count(NA))
#' for a dataframe.
#'
#' @param df A dataframe
#' @return The dataframe containing column stats
#' @examples
#' df_columnstat(data.frame(x=c(1,2,3),y=c("a","b",NA)))
#' df_columnstat(mtcars)
df_columnstat <- function(df) {
  columns <- colnames(df)
  types <- rep("",length(columns))
  nas <- rep(0,length(columns))
  for(i in 1:length(columns)) {
    types[i] = class(df[[columns[i]]])[1]  # take 1st class
    nas[i] = sum(is.na(df[[columns[i]]]))
  }
  rslt <- data.frame(column=columns,type=types,na=nas)
  rslt$column = as.character(rslt$column)
  rslt$type = as.character(rslt$type)
  rslt
}
