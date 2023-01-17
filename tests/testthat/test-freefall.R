test_that("freefall works with default g", {
  expect_equal(round(freefall(10),4), 1.4286)
})

test_that("freefall works with a small g", {
  expect_equal(round(freefall(100, g = 1),3), 14.142)
})

test_that("freefall works with a large g", {
  expect_equal(round(freefall(5, g = 100),4), 0.3162)
})
