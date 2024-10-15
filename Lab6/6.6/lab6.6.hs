{-------------------------------------------------------------------------------

6.6 Given a text file pesel.txt containing PESEL numbers from the 20th century. 
    Write a program that:

    - determines the number of women's PESEL numbers (the penultimate number in 
      the code is even)
    - indicates the number of people born in December
    - determines the number of people born in particular decades (the result is 
      a 10-element list)

-------------------------------------------------------------------------------}

module Main where
 
import System.Environment

{-------------------------------------------------------------------------------

6.6.1 Determines the number of women's PESEL numbers (the penultimate number in
      the code is even)

-------------------------------------------------------------------------------}

{-

*Main> :t elem
elem :: (Eq a, Foldable t) => a -> t a -> Bool

*Main> elem 1 [1,3,5]
True

*Main> elem 2 [1,3,5]
False

*Main> let f [a,b,_] = (a, b)
*Main> f "cat"
('c','a')

*Main> f "zonk"
*** Exception: <interactive>:5:5-22: Non-exhaustive patterns in function f

*Main> lines "It is the first line.\nIt is the second line."
["It is the first line.","It is the second line."]

-}

womenCount :: [[Char]] -> Int
womenCount [] = 0
womenCount ([_, _, _, _, _, _, _, _, _, p, _]:xs)
    | elem p "02468" = 1 + womenCount xs
    | otherwise = womenCount xs

pesels = ["89100192752", "85111779283"]

{-

ghci> womenCount pesels
1

-}

{-------------------------------------------------------------------------------

6.6.2 Indicates the number of people born in December

-------------------------------------------------------------------------------}

bornInDecember :: [[Char]] -> Int
bornInDecember [] = 0
bornInDecember ([_, _, m1, m2, _, _, _, _, _, _, _]:xs)
    | elem ([m1] ++ [m2]) ["92","12","32","52","72"] = 1 + bornInDecember xs
    | otherwise = bornInDecember xs

pesels2 = ["02271492752", "85121779283"]

{-

ghci> bornInDecember pesels2
1

-}

{-------------------------------------------------------------------------------

6.6.3 determines the number of people born in particular decades (the result is
      a 10-element list)

-------------------------------------------------------------------------------}

{-

*Main> ['a']
"a"

*Main> 'a':[]
"a"

*Main> "a" !! 0
'a'

*Main> head "a"
'a'

-}

decCount :: [[Char]] -> [Int] -> [Int]
decCount [] ds = ds
decCount ([a,b,_,_,_,_,_,_,_,_,_]:xs) [d1,d2,d3,d4,d5,d6,d7,d8,d9,d10]
  | 0  < n && n <= 10 = decCount xs [d1+1,d2,d3,d4,d5,d6,d7,d8,d9,d10]
  | 10 < n && n <= 20 = decCount xs [d1,d2+1,d3,d4,d5,d6,d7,d8,d9,d10]
  | 20 < n && n <= 30 = decCount xs [d1,d2,d3+1,d4,d5,d6,d7,d8,d9,d10]
  | 30 < n && n <= 40 = decCount xs [d1,d2,d3,d4+1,d5,d6,d7,d8,d9,d10]
  | 40 < n && n <= 50 = decCount xs [d1,d2,d3,d4,d5+1,d6,d7,d8,d9,d10]
  | 50 < n && n <= 60 = decCount xs [d1,d2,d3,d4,d5,d6+1,d7,d8,d9,d10]
  | 60 < n && n <= 70 = decCount xs [d1,d2,d3,d4,d5,d6,d7+1,d8,d9,d10]
  | 70 < n && n <= 80 = decCount xs [d1,d2,d3,d4,d5,d6,d7,d8+1,d9,d10]
  | 80 < n && n <= 90 = decCount xs [d1,d2,d3,d4,d5,d6,d7,d8,d9+1,d10]
  | 90 < n || n == 0  = decCount xs [d1,d2,d3,d4,d5,d6,d7,d8,d9,d10+1]
  where n = read [a,b]

printResult :: [Int] -> String
printResult [d1,d2,d3,d4,d5,d6,d7,d8,d9,d10] =
  "1901 - 1910: " ++ (show d1) ++
  "\n1911 - 1920: " ++ (show d2) ++
  "\n1921 - 1930: " ++ (show d3) ++
  "\n1931 - 1940: " ++ (show d4) ++
  "\n1941 - 1950: " ++ (show d5) ++
  "\n1951 - 1960: " ++ (show d6) ++
  "\n1961 - 1970: " ++ (show d7) ++
  "\n1971 - 1980: " ++ (show d8) ++
  "\n1981 - 1990: " ++ (show d9) ++
  "\n1991 - 2000: " ++ (show d10)

main = do
  [input] <- getArgs
  inText <- readFile input
  let women = womenCount (lines inText)
  putStrLn ("number of women: " ++ show women)
  let december = bornInDecember (lines inText)
  putStrLn ("number of people born in december: " ++ show december)
  let counter = decCount (lines inText) [0,0,0,0,0,0,0,0,0,0]
  putStrLn (printResult counter)

{-

ghc --make lab6.6.hs
[2 of 2] Linking lab6.6.exe

./lab6.6.exe pesel.txt
number of women: 74
number of people born in december: 20
1901 - 1910: 0
1911 - 1920: 0
1921 - 1930: 0
1931 - 1940: 0
1941 - 1950: 3
1951 - 1960: 21
1961 - 1970: 30
1971 - 1980: 32
1981 - 1990: 60
1991 - 2000: 4

-}
