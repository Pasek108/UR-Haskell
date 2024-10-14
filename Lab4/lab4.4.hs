{-------------------------------------------------------------------------------

4.4 Define a string2bools function that replaces a list of characters with 
    a list of logical values that determine whether the original element was
    lowercase or not.

Tip:
Add the following line:
import Data.Char

-------------------------------------------------------------------------------}

import Data.Char

string2bools :: [Char] -> [Bool]
string2bools xs = map isLower xs

{-

ghci> string2bools ""
[]

ghci> string2bools "Ala"
[False,True,True]

ghci> string2bools "Ala MA"
[False,True,True,False,False,False]

-}

string2bools' :: [Char] -> [Bool]
string2bools' [] = []
string2bools' (x:xs) | isLower x = (True : string2bools xs)
                     | otherwise = (False : string2bools xs)
{-

ghci> string2bools' ""
[]

ghci> string2bools' "Ala"
[False,True,True]

ghci> string2bools' "Ala MA"
[False,True,True,False,False,False]

-}
