{-------------------------------------------------------------------------------

6.5 Write a program that searches a text file and returns the line numbers where 
    it found the searched word. The program is to receive two parameters from 
    the command line: the search word and the file name.

-------------------------------------------------------------------------------}

module Main where
 
import System.Environment

searchWord :: String -> [String] -> Int -> [Int]
searchWord _ [] _ = []
searchWord "" _ _ = []
searchWord word (line:lines) i | elem word (words line) = [i] ++ (searchWord word lines (i+1))
                               | otherwise = (searchWord word lines (i+1))

main = do
  [word,file] <- getArgs
  s <- readFile file
  let result = (searchWord word (lines s) 1)
  putStrLn (show result)

{-
 
ghc --make lab6.5.hs
[2 of 2] Linking lab6.5.exe

./lab6.5.exe dla lab6.5_src_file.txt
[3,4]

 -}
