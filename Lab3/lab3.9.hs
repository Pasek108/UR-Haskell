{-------------------------------------------------------------------------------

3.9 Assume that a vector in the R^3 space is defined as a triple of Double 
    numbers. Implement the Vectors module containing:

    vector addition operator (+.)
    vector subtraction operator (-.)
    vector scalar multiplication operator (*.)
    vector vector multiplication operator (***)

-------------------------------------------------------------------------------}

module Vectors
where

{- ---------------------- addition ------------------------

v1 = a*i + b*j + c*k
v2 = d*i + e*j + f*k

v1 + v2 = (a+d)*i + (b+e)*j + (c+f)*k

-}

infixl 6 +.
(+.) :: (Double, Double, Double) -> (Double, Double, Double) -> (Double, Double, Double)
(a,b,c) +. (d,e,f) = (a+d, b+e, c+f)

{-

ghci> (2,5,-1) +. (-2,4,-6)
(0.0,9.0,-7.0)

-}

{- ---------------------- subtraction ------------------------

v1 = a*i + b*j + c*k
v2 = d*i + e*j + f*k

v1 - v2 = (a-d)*i + (b-e)*j + (c-f)*k

-}

infixl 6 -.
(-.) :: (Double, Double, Double) -> (Double, Double, Double) -> (Double, Double, Double)
(a,b,c) -. (d,e,f) = (a-d, b-e, c-f)

{-

ghci> (2,5,-1) -. (-2,4,-6)
(4.0,1.0,5.0)

-}

{- ---------------------- scalar multiplication ------------------------

v1 = a*i + b*j + c*k
s = n

v1 * s = (a*n)*i + (b*n)*j + (c*n)*k

-}

infixl 7 *.
(*.) :: (Double, Double, Double) -> Double -> (Double, Double, Double)
(a,b,c) *. s = (a*s, b*s, c*s)

{-

ghci> (2,5,-1) *. 2
(4.0,10.0,-2.0)

-}

{- ---------------------- vector multiplication ------------------------

v1 = a*i + b*j + c*k
v2 = d*i + e*j + f*k

v1 * v2 = (b*f - c*e)*i + (c*d - a*f)*j + (a*e - b*d)*k

-}

infixl 7 ***.
(***.) :: (Double, Double, Double) -> (Double, Double, Double) -> (Double, Double, Double)
(a,b,c) ***. (d,e,f) = ((b*f - c*e), (c*d - a*f), (a*e - b*d))

{-

ghci> (2,5,-1) ***. (-2,4,-6)
(-26.0,14.0,18.0)

-}
