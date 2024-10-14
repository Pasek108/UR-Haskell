{-------------------------------------------------------------------------------

3.8 Let's assume that a complex number is written as a pair of Double numbers.
    Implement the Complex module containing:

    - complex addition operator (+.)
    - complex subtraction operator (-.)
    - complex multiplication operator (*.)
    - re and im functions returning the real and imaginary parts of a
      complex number

-------------------------------------------------------------------------------}

module Complex
where

{- ---------------------- addition ------------------------

z1 = a + b*i   i*i = -1
z2 = c + d*i

z1 + z2 = (a + b*i) + (c + d*i) = (a + c) + (b + d)*i

-}

infixl 6 +.
(+.) :: (Double, Double) -> (Double, Double) -> (Double, Double)
(a,b) +. (c,d) = (a+c, b+d)

{-

ghci> (3.14, -1) +. (-1,5)
(2.14,4.0)

-}

{- ---------------------- subtraction ------------------------

z1 = a + b*i   i*i = -1
z2 = c + d*i

z1 + z2 = (a + b*i) - (c + d*i) = (a - c) + (b - d)*i

-}

infixl 6 -.
(-.) :: (Double, Double) -> (Double, Double) -> (Double, Double)
(a,b) -. (c,d) = (a-c, b-d)

{-

ghci> (3.14, -1) -. (-1,5)
(4.140000000000001,-6.0)

-}

{- ---------------------- multiplication ------------------------

z1 = a + b*i   i*i = -1
z2 = c + d*i

z1 + z2 = (a + b*i) * (c + d*i) = (a*c - b*d) + (a*d + c*b)*i

-}

infixl 7 *.
(*.) :: (Double, Double) -> (Double, Double) -> (Double, Double)
(a,b) *. (c,d) = ((a*c - b*d), (a*d + c*b))

{-

ghci> (3.14, -1) *. (-1,5)
(1.8599999999999999,16.700000000000003)

-}

{- ---------------------- re and im parts ------------------------ -}

re :: (Double, Double) -> Double
re (a,b) = a

im :: (Double, Double) -> Double
im (a,b) = b

{-

ghci> re (3.14, -1)
3.14

ghci> im (3.14, -1)
-1.0

-}
