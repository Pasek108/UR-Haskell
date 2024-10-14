{-------------------------------------------------------------------------------

2.7 Define the Triangle module and include definitions for the functions 
    trArea1, trArea2, and trArea3, which determine the area of the triangle, 
    each of which uses a different formula for the area of the triangle.

-------------------------------------------------------------------------------}

module Triangle
where

trArea1 a h = a * h/2

trArea2 a b c =
        sqrt (p * (p-a) * (p-b) * (p-c))
        where p = (a+b+c) / 2

trArea3 a b gamma_rad =
        a * b/2 * (sin deg)
        where deg = gamma_rad * pi/180

{-

ghci> trArea1 6 5
15.0

ghci> trArea2 4 5 3
6.0

ghci> trArea3 4 6 34
6.710314841648962

-}




