{-------------------------------------------------------------------------------

2.3 Using the let command, define functions that determine:

    sphere volume (sphereVolume)
    cone volume(coneVolume)
    volume of the cuboid (cuboidVolume)

Test these functions on sample data.

-------------------------------------------------------------------------------}

{-

ghci> let sphereVolume r = (4 / 3) * pi * r^3
ghci> sphereVolume 1
4.1887902047863905

ghci> let coneVolume r h = 1/3 * h * pi * r^2
ghci> coneVolume 1 2
2.0943951023931953

ghci> let cuboidVolume a b c = a * b * c
ghci> cuboidVolume 2 3 4
24

-}
