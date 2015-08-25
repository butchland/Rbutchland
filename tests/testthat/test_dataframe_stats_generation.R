library(Rbutchland)

context("dataframe stats")

test_that("summarize dataframe with df_stat", {
  df = data.frame(x=c(1,2,3),y=c("a","b","c"))
  df_box = df_boxstat(df)
  expect_equal(df_box$dimension, c("nrows","ncols"))
  expect_equal(df_box$value, c(3,2))
})
