test_that("is tibble", {

  mydata <- theoffice

  expect_s3_class(mydata , "tbl_df")

})
