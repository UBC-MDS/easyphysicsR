# checks if epxected output is equal to the computed output - if not, throws an error
test_that("Static Friction On Ground is calculated incorrectly...", {
  expect_equal(round(static_friction_ground(2.5, 10),2), 245)
  expect_equal(round(static_friction_ground(0.2, 14,9.8),2), 27.44)
  expect_equal(round(static_friction_ground(2.2, 34,9.80665),2), 733.54)
})
# checks if input is numeric or not - if not, throws an error
test_that("static_friction_ground() errors if input is not numeric...", {
  expect_error(static_friction_ground("a,b","c,d"))
  expect_error(static_friction_ground(12,"c,d"))
  expect_error(static_friction_ground(4, 4, "a,b"))
})
