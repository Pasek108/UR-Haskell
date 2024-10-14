{-------------------------------------------------------------------------------

2.2 Using the rem function, check which of the numbers 2, 3, 4 are divisors of 
    1234. Use the rem function to check if 113 is prime.

-------------------------------------------------------------------------------}

{-

ghci> rem 1234 2
0

ghci> 1234 `rem` 3
1

ghci> rem 1234 4
2

-}

is_prime x = check_prime x (div x 2)

check_prime num den | den == 1 = True
                    | rem num den == 0 = False
                    | otherwise = check_prime num (den-1)
                    
{-

ghci> is_prime 113
True

ghci> is_prime 116
False

-}
