test_that("freefall works with default g", {
  expect_equal(round(freefall(10)[1],4), 1.4286)
})

test_that("freefall works with a small g", {
  expect_equal(round(freefall(100, g = 1)[1],3), 14.142)
})

test_that("freefall works with a large g", {
  expect_equal(round(freefall(5, g = 100)[1],4), 0.3162)
})

test_that("it is errorenous to input non-numeric data(
          e.g., string, list) for height or g", {
            expect_error(
              freefall(10, list(1,2,3)))
            expect_error(
              freefall(c('not a number')))
            expect_error(
              freefall(tibble('planet')))
          })

test_that("the function returns a list with a numeric vector and a plot", {
  expect_true(is_list(freefall(10))
              & is.ggplot(freefall(
                10)[2])
              & is.numeric(freefall(
                10)[1])
  )
  expect_true(is_list(freefall(5, g = 100))
              & is.ggplot(freefall(
                5, g = 100)[2])
              & is.numeric(freefall(
                5, g = 100)[1])
  )
  expect_true(is_list(freefall(99, g = 99))
              & is.ggplot(freefall(
                99, g = 99)[2])
              & is.numeric(freefall(
                99, g = 99)[1])
  )
})

test_that("it is errorenous to put numbers smaller than 0 for height or g", {
            expect_warning(
              freefall(10, g = -1))
            expect_warning(freefall(-10))
            expect_warning(freefall(-1))
          })
