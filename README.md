
<!-- README.md is generated from README.Rmd. Please edit that file -->

# easyphysicsR

<!-- badges: start -->
<!-- badges: end -->

A package with useful physics formulas to make physics easy and fun for
users! It uses four functions to easily calculate four classic physics
theories. By making the functions concise and supporting graphs to
demonstrate the theories, physics beginners might find learning physics
fun and not daunting! All functions in this package require only
arguments in numeric format; no dataset files are needed. `easyphysics`
can also generate easy-to-understand visualizations to further reveal
the physics effects.

## Installation

You can install the development version of easyphysicsR from
[GitHub](https://github.com/UBC-MDS/easyphysicsR) with:

``` r
# install.packages("devtools")
devtools::install_github("UBC-MDS/easyphysicsR")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(easyphysicsR)
```

## Usage

The package has four functions which can provide solutions for Physics
Equations. Input will be taken from the User and the solutions will be
provided by the functions. The four functions are as follows:

- `freefall()` calculates the distance traveled by a falling object
  using the equation of motion h = 1/2\*gt^2, returns the time it takes
  for the free fall, and a plot compares the time it takes for the free
  fall on different planets.The distance traveled by the falling object
  and the acceleration of gravity are the function’s arguments.
- `gravitational_energy()` calculates the energy possessed or acquired
  by an object due to a change in its position when it is present in a
  gravitational field = m*g*h
- `kinetic_energy()` calculates the Kinetic Energy of an object. When
  work is done on an object, energy is transferred, and the object moves
  with a new constant speed. We call the energy that is transferred
  kinetic energy, and it depends on the mass and speed achieved. The
  kinetic energy equation is given as: KE = 1/2*m*v^2, Where KE is the
  kinetic energy, m is the body’s mass, and v is the body’s velocity.
- `static_friction_ground()` calculates the friction force for static
  object. The formula is fr = mu \* N, where the mu is the coefficient
  of friction which incorporating the characteristics of the surface.

``` r
library(easyphysicsR)
freefall(height, g = 9.8)
```

## Fitting into the R ecosystem

Another similar physics package
[soilphysics](https://arsilva87.github.io/soilphysics/) is available in
the R ecosystem.`soilphysics` is a library for soil physics data
analysis.

`easyphysicsR` targets physics beginners rather than soil physics
professionals, such as middle schoolers and people new to physics. It
uses four functions to easily calculate four classic physics theories,
not limited to soil physics. By making the functions concise and
supporting graphs to demonstrate the theories, physics beginners might
find learning physics fun and not daunting! All functions in this
package require only arguments in numeric format; no dataset files are
needed. `easyphysicsR` can also generate easy-to-understand
visualizations to further reveal the physics effects. The specific
functions and visual components make `easyphysicsR` different from other
packages.

## Contributing

`easyphysicsR` was created by Revathy Ponnambalam, Nikita Susan Easow,
Yaou Hu and Mengjun Chen. Interested in contributing? Check out the
[contributing guidelines](CONTRIBUTING.md). Please note that this
project is released with a [Code of Conduct](CONDUCT.md). By
contributing to this project, you agree to abide by its terms.

## License

`easyphysicsR` was created by Revathy Ponnambalam, Nikita Susan Easow,
Yaou Hu and Mengjun Chen. It is licensed under the terms of the MIT
license.

## Credits

`easyphysicsR` was created with following the book [R
Packages](https://r-pkgs.org/) by Hadley Wickham and Jenny Bryan.
