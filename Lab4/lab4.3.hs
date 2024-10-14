{-------------------------------------------------------------------------------

4.3 Define functions:
    
    - countLower that determines the number of lowercase letters in the input 
      text passed to it
    - countLowerUpper that determines the number of lowercase and uppercase
      letters in the input text passed to it. The function should be of type
      countLowerUpper :: String -> (Int, Int)

-------------------------------------------------------------------------------}

is_lower x = 'a' <= x && x <= 'z'

countLower [] = 0
countLower (x:xs) | is_lower x = 1 + countLower xs
                  | otherwise = countLower xs

{-

ghci> countLower ""
0

ghci> countLower "Ala ma kotA"
7

-}

is_upper x = 'A' <= x && x <= 'Z'

countUpper [] = 0
countUpper (x:xs) | is_upper x = 1 + countUpper xs
                  | otherwise = countUpper xs

countLowerUpper :: String -> (Int, Int)
countLowerUpper [] = (0,0)
countLowerUpper xs = (countLower xs, countUpper xs)

{-

ghci> countLowerUpper ""
(0,0)

ghci> countLowerUpper "Ala ma kotA"
(7,2)

-}
