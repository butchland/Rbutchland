library(Rbutchland)

context("dataframe stats")

test_that("summarize dataframe with df_boxstat", {
  df <- data.frame(x=c(1,2,3),y=c("a","b","c"))
  df_box <- df_boxstat(df)
  expect_equal(df_box$dimension, c("nrows","ncols"))
  expect_equal(df_box$value, c(3,2))
})

test_that("summarize dataframe with df_columnstat", {
  df <- data.frame(x=c(1,2,3),y=c("a","b",NA),z=c("a","b",NA))
  df$z = as.character(df$z)
  df_col <- df_columnstat(df)
  expect_equal(df_col$column, c("x","y","z"))
  expect_equal(df_col$type, c("numeric","factor","character"))
  expect_equal(df_col$na, c(0,1,1))
})
