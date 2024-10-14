{-------------------------------------------------------------------------------

3.4 Define the divides function, which takes two integers k and n (Int type) as 
    arguments and returns a logical value:

    True if k divides n
    False otherwise

Tip: You can use the rem function in the definition of the divides function.

-------------------------------------------------------------------------------}

divides :: Int -> Int -> Bool
divides k n = n `rem` k == 0

{-

ghci> divides 5 9
False

ghci> divides 5 10
True

-}
