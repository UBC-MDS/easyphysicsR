# checking if expected values are equal to the computed values - if not, throws error
test_that("Kinetic Energy is calculated correctly...", {
  expect_equal(kinetic_energy(10, 3), 45)
  expect_equal(kinetic_energy(5, 2), 10)
  expect_equal(kinetic_energy(12, 1), 6)
})
# checking if the input time is nummeric or not - if not, throws error
test_that("kinetic_energy() errors if input is not numeric...", {
  expect_error(kinetic_energy("a,b","c,d"))
  expect_error(kinetic_energy(12,"c,d"))
  expect_error(kinetic_energy("a,b",4))
})
