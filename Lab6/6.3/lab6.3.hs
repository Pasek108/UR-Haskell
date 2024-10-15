{-------------------------------------------------------------------------------

6.3 Write a program that converts an HTML file to a text file. As part of the 
    conversion, all HTML tags, i.e. any text between the < and > characters, 
    are to be removed. The program is to receive two parameters from the 
    command line: the name of the file to be converted and the name of the
    resulting file.

Tip: To remove HTML tags, define a clear function of the type:

clear :: String -> Bool -> String

The logical type argument determines whether we are currently (processing text) 
inside an HTML tag (True) or not.

-------------------------------------------------------------------------------}

module Main where
 
import System.Environment

{-

*Main> 'a' == 'a'
True

*Main> 'A' == 'a'
False

*Main> 'c' : "at"
"cat"

*Main> let f (x:xs) = (x,xs)
*Main> f "cat"
('c',"at")

-}

{-

Consider two branches of the clear function with flags:

False - to be invoked if the current character is outside an html tag
True  - to be invoked if the current character is inside an html tag

-}

clear :: String -> Bool -> String
clear [] _ = []
clear (x:xs) False | x == '<' = clear xs True
                   | otherwise = x : clear xs False

clear (x:xs) True | x == '>' = clear xs False
                  | otherwise = clear xs True

{-

clear :: String -> Bool -> String
clear ...
clear ... False | if we get '<' then we omit it and change the mode of operation
                | otherwise, we add the current char to the result and continue
clear ... True | if we get '>' then we omit it and change the mode of operation
               | otherwise, we omit the current char and continue

-}

{-

ghci> clear "" False
""

ghci> clear "" True
""

ghci> clear "It is a sentence." False
"It is a sentence."

ghci> clear "It is a sentence." True
""

ghci> clear "<p>It is a paragraph." False
"It is a paragraph."

ghci> clear "<p>It is a paragraph." True
"It is a paragraph."

-}

main = do
  [f,g] <- getArgs
  s <- readFile f
  writeFile g (clear (show s) False)

{-

ghc --make lab6.3.hs
[2 of 2] Linking lab6.3.exe

./lab6.3.exe lab6.3_src_file.html lab6.3_dst_file.txt

-}
