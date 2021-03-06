context("report")


test_that("report", {
  r <- report(seq(0, 1, length.out = 100))
  testthat::expect_equal(nchar(print(r, width = 10)), 37)
  testthat::expect_is(print(r), "character")
  testthat::expect_is(to_text(r), "character")
  testthat::expect_is(to_fulltext(r), "character")
  testthat::expect_true(is.report(r))

  testthat::expect_is(to_table(r), "data.frame")
  testthat::expect_is(to_fulltable(r), "data.frame")
  testthat::expect_is(as.data.frame(r), "data.frame")
  testthat::expect_is(summary(r), "data.frame")
  testthat::expect_is(summary(r, digits = 2), "data.frame")
  testthat::expect_is(summary(report(iris), digits = 2)$n_Obs, "factor")

  testthat::expect_is(as.list(r), "list")
  testthat::expect_is(to_values(r), "list")
})
