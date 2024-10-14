{-------------------------------------------------------------------------------

3.3 Define a recursive factorial2 function that determines the double factorial 
    of a non-negative integer n:

    n!! = 1 for n = 0 and n = 1
    n!! = n(n - 2)!! for n > 1

-------------------------------------------------------------------------------}

factorial2 :: Integer -> Integer
factorial2 n | n == 0 || n == 1 = 1
             | otherwise = n * factorial2 (n - 2)

{-

ghci> factorial2 0
1

ghci> factorial2 1
1

ghci> factorial2 5
15

ghci> factorial2 15
2027025

-}
