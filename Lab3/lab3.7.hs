{-------------------------------------------------------------------------------

3.7 Define the >< operator, which takes two integers a and b as arguments and 
    returns a logical value specifying whether the numbers a, b are relatively 
    prime. Place the operator in the Math module.

The numbers a and b are relatively prime if their greatest common divisor is 1.

-------------------------------------------------------------------------------}

module Math
where

(><) :: Integral a => a -> a -> Bool
x >< y = gcd x y == 1

{-

ghci> gcd 12 6
6
ghci> 12 >< 6
False

ghci> gcd 15 8
1
ghci> 15 >< 8
True

-}
