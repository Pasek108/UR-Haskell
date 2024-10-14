{-------------------------------------------------------------------------------

4.6 Define the string2int function that transforms text composed of digits into 
    an appropriate numeric value.

-------------------------------------------------------------------------------}

string2int x = read x :: Int

string2int' :: String -> Int
string2int' x = read x

{-

ghci> string2int "35"
35

ghci> string2int' "35"
35

-}
