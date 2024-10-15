{-------------------------------------------------------------------------------

6.4 Write a program to sort a text file. The program is to receive two 
    parameters from the command line: the name of the file to be sorted and the
    name of the resulting file.

Tip: Use the function mergeSort presented below and functions lines and unlines.

merge :: Ord a => [a] -> [a] -> [a]
merge [] ys = ys
merge xs [] = xs
merge (x:xs) (y:ys) | x <= y = x : merge xs (y:ys)
                    | otherwise = y : merge (x:xs) ys

mergeSort :: Ord a => [a] -> [a]
mergeSort xs | len <= 1 = xs
             | otherwise = merge (mergeSort ys) (mergeSort zs)
             where len = length xs
                   half = len `div` 2
                   ys = take half xs
                   zs = drop half xs

-------------------------------------------------------------------------------}

module Main where
 
import System.Environment

merge :: Ord a => [a] -> [a] -> [a]
merge [] ys = ys
merge xs [] = xs
merge (x:xs) (y:ys) | x <= y = x : merge xs (y:ys)
                    | otherwise = y : merge (x:xs) ys

mergeSort :: Ord a => [a] -> [a]
mergeSort xs | len <= 1 = xs
             | otherwise = merge (mergeSort ys) (mergeSort zs)
             where len = length xs
                   half = len `div` 2
                   ys = take half xs
                   zs = drop half xs

main = do
  [f,g] <- getArgs
  s <- readFile f
  writeFile g (unlines (mergeSort (lines s)))

{-
 
ghc --make lab6.4.hs
[2 of 2] Linking lab6.4.exe


./lab6.4.exe lab6.4_src_file.txt lab6.4_dst_file.txt

 -}
