test_that("Gravitational Energy is not calculated correctly...", {
  expect_equal(round(gravitational_energy(2.5, 10),2), 245.17)
  expect_equal(round(gravitational_energy(25, 14,9.8),2), 3430)
  expect_equal(round(gravitational_energy(12, 34,9.80665),2), 4001.11)
  })

test_that("Gravitational_energy() function throws error if any one of the input is not numeric...", {
  expect_error(gravitational_energy("a",10,9.80665))
  expect_error(gravitational_energy(2,"g",9.80665))
  expect_error(gravitational_energy(6,4,"thw"))
})
