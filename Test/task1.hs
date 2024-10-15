{-------------------------------------------------------------------------------

Task 1 Group 1

Provide the implementation of the leg function:: Int -> Int -> Int,
which takes two arguments a and b and returns:

1 when a < b,
-1 when b < a,
0 when a = b

-------------------------------------------------------------------------------}

leg :: Int -> Int -> Int
leg a b | a < b  = 1
        | b < a  = -1
        | a == b = 0

{-

ghci> leg 1 1
0

ghci> leg 2 1
-1

ghci> leg 1 2
1

-}

{-------------------------------------------------------------------------------

Task 1 Group 2

We are given two points on a Z×Z subset of the plane. Define ## operator
determining a point closer to the center of the coordinate system. Determine
the bond strength to 5

-------------------------------------------------------------------------------}

infix 5 ##
(##) :: [Double] -> [Double] -> [Double]
[x1, y1] ## [x2, y2] | dist1 < dist2 = [x1, y1]
                     | otherwise = [x2, y2]
                     where
                     dist1 = sqrt (x1^2 + y1^2)
                     dist2 = sqrt (x2^2 + y2^2)

{-

ghci> [3,3] ## [3,3]
[3.0,3.0]

ghci> [3,3] ## [4,3]
[3.0,3.0]

ghci> [3,3] ## [2,3]
[2.0,3.0]

-}
