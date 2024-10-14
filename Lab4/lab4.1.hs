{-------------------------------------------------------------------------------

4.1 Create a Lists module and define the sumOfSquares function in it, which 
    takes a list of numbers as an argument and returns the sum of their 
    squares. The function returns the value 0 if the list is empty. Define 
    a function in two ways:

    - using standard functions (sums and maps)
    - recursively

-------------------------------------------------------------------------------}

module Lists
where

sumOfSquares xs = sum (map (^2) xs)

{-

ghci> sumOfSquares [1,2,3]
14
ghci> sumOfSquares [2]
4
ghci> sumOfSquares []
0

-}

sumOfSquares' [] = 0
sumOfSquares' [x] = x*x
sumOfSquares' (x:xs) = x*x + sumOfSquares xs

{-

ghci> sumOfSquares' [1,2,3]
14
ghci> sumOfSquares' [2]
4
ghci> sumOfSquares' []
0

-}
