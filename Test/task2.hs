{-------------------------------------------------------------------------------

Task 2 Group 1 

Assume that a complex number is written as a two-element list
Double values. Give the implementation of the complex number multiplication
operator

-------------------------------------------------------------------------------}

infix 5 ***
(***) :: [Double] -> [Double] -> [Double]
[re1, im1] *** [re2, im2] = [re3, im3]
    where
    re3 = (re1 * re2) - (im1 * im2)
    im3 = (re1 * im2) + (im1 * re2)

{-

ghci> [12, 3] *** [2, 4]
[12.0,54.0]

-}

{-------------------------------------------------------------------------------

Task 2 Group 2

Define a function that represents a string as a list of characters.

lista :: String -> IO ()
lista n = putStrLn ("[" ++ znaki n ++ "] ")
znaki [] = []
znaki [x] = "'" ++ [x] ++ "' "
znaki (x:xs) = -- complete --

Exapmle:

*Main> lista "Ala"
['A', 'l', 'a']

-------------------------------------------------------------------------------}

lista :: String -> IO ()
lista n = putStrLn ("[" ++ znaki n ++ "] ")

znaki [] = []
znaki [x] = "'" ++ [x] ++ "'"
znaki (x:xs) = (znaki [x]) ++ "," ++ znaki xs

{-

ghci> lista ""
[]

ghci> lista "a"
['a']

ghci> lista "Test"
['T','e','s','t']

-}
