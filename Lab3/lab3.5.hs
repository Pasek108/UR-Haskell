{-------------------------------------------------------------------------------

3.5 Define the recursive function seq', which determines the value of the nth
    term of a numerical sequence defined as follows:

    seq_1 = 3
    seq_2 = 4
    seq_n = 0.5*seq_n-1 + 2*seq_n-2, for n > 2

-------------------------------------------------------------------------------}

seq' n | n == 1 = 3
       | n == 2 = 4
       | otherwise = 0.5 * seq' (n-1) + 2 * seq' (n-2)

{-

ghci> seq' 1
3.0

ghci> seq' 2
4.0

ghci> seq' 3
8.0

ghci> seq' 4
12.0

-}
