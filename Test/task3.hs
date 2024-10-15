{-------------------------------------------------------------------------------

Task 3 Group 1

Provide an implementation of the f function that takes a list of any values
as an argument and returns a list of odd-indexed values.

Note: the function works for lists of any type.

-------------------------------------------------------------------------------}

f [] = []
f [_] = []
f (_:x:xs) = [x] ++ (f xs)

{-

ghci> f []
[]

ghci> f [1]
[]

ghci> f [1,2,3,4,5]
[2,4]

-}

{-------------------------------------------------------------------------------

Task 3 Group 2

Define a spaces :: String -> Int function that calculates how many spaces given 
string contains

-------------------------------------------------------------------------------}

spaces :: String -> Int
spaces "" = 0
spaces (x:xs) | x == ' ' = 1 + (spaces xs)
              | otherwise = (spaces xs)

{-

ghci> spaces ""
0

ghci> spaces " "
1

ghci> spaces "a"
0

ghci> spaces "ala ma kota"
2

-}
