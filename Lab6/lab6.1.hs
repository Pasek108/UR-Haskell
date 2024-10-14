{-------------------------------------------------------------------------------

5.1 Implement the cubeRoot function that takes the third root of a real number. 
    If y is an approximation to the third root of x, then the next (better) 
    approximation is obtained from the formula 1/3(2y + x/(y^2)). The 
    calculation result is satisfactory if y^3 differs from x no more than the 
    assumed accuracy. Place the function in the Math module.
    
Tip: solution for determining the square root

module Iteration ( (~=) )
where

infix 5 ~=
a ~= b = (a - b < h) && (b - a < h)
         where h = 0.000001


root x = until goodEnough improve 1.0
         where improve y = 0.5 * (y + x/y)
         goodEnough y = y * y ~= x

-------------------------------------------------------------------------------}

module Math ( (~=) )
where

infix 5 ~=
a ~= b = (a - b < h) && (b - a < h)
         where h = 0.000001


cubeRoot x = until goodEnough improve 1.0
           where
           improve y = (1/3) * (2*y + x/(y^2))
           goodEnough y = y^3 ~= x

{-

ghci> cubeRoot 8
2.000000000012062

ghci> cubeRoot 27
3.0000000000000977

ghci> cubeRoot 21
2.7589241814012504

-}
