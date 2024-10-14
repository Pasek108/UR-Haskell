{-------------------------------------------------------------------------------

3.6 Define your own gcd' (greatest common divisor). The implementation has to be
    based on the Euclidean algorithm.

-------------------------------------------------------------------------------}

gcd' a b | reminder == 0 = b
         | otherwise = gcd' b reminder
         where reminder = rem a b

{-

ghci> gcd 282 78
6
ghci> gcd' 282 78
6

ghci> gcd 24 36
12
ghci> gcd' 24 36
12

-}
