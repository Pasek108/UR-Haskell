module Solids
where

sphereVolume :: Floating a => a -> a
sphereVolume r = (4 / 3) * pi * r^3

coneVolume :: Floating a => a -> a -> a
coneVolume r h = 1/3 * h * pi * r^2

pyramidVolume :: Floating a => a -> a -> a
pyramidVolume a h = a*a * h / 3
