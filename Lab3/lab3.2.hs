{-------------------------------------------------------------------------------

3.2 Define the factorial function that determines the factorial of a 
    non-negative integer n. Using the factorial function, define the 
    binomialCoefficient function that determines the value of Newton's symbol 
    for two non-negative integers k, n. Place the functions in the Math module.

-------------------------------------------------------------------------------}

factorial :: Integer -> Integer
factorial n | n == 1 = n
            | otherwise = n * factorial (n - 1)

binomialCoefficient k n | 0 <= k && k <= n = factorial n `div` (factorial k * factorial (n-k))

{-

ghci> factorial 3
6

ghci> binomialCoefficient 3 5
10

-}
