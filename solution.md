# Solutions

There are a few bugs:

1.  Formula used for computing the volume of a sphere is incorrect: it should be `4/3 * pi * r^3`
2.  The second argument `rho` is not used in `volume()`. While this is not exactly a bug, the existence of an unused argument is confusing and should be removed. Also, inside `volume_vector()`, the second argument `rho` is not provided for `volume()`
3.  The argument `r` in `volume_vector()` is not used as `r` is redefined before it is used to calculate the volume. This means that no matter what value we provide to the function `volume_vector()` when we call it, it always does the same thing
4.  For the function `volume_vector()`, `r <- 22` has no effect and should be removed
5.  Given we want to calculate volumes of the spheres with radius `r`, `r^2` and `r^3`, the for loop should be:

<!-- -->

    for (pw in 1:3){
       volumes = c(volumes, volume(r^pw))
    }

Note that three things have been changed: 1. it should be `1:3` instead of `2:4`, 2. it should be `volume(r^pw)` instead of `volume(r)`, 3. it should be the power (`pw`) that takes different values inside the loop 4. `volume_vector()` does not have any effect - it does not have any side effects like printing, or return any appropriate value. How to fix it depends on what exactly you want it to do. If you want to print out the answers, you can do:

    volume_vector <- function(r) {
        for (pw in 1:3){
            print(volume(r^pw))
        }
    }

If you want to return all three volumes, then you need to store those values in a container. See foo.R for such implementation.

See foo.R for the updated version of foo.R with the bugs fixed.
