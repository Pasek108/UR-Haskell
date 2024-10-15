{-------------------------------------------------------------------------------

6.2 Compile the following program into an executable file. Analyze the code. 
    Test the operation of the program.

    module Main where
     
    import System.Environment
     
    main = do
      [f,g] <- getArgs
      s <- readFile f
      writeFile g p

Tip: The getArgs function takes arguments from the command line

     Create an example text file lab6.2_src_file.txt and with the use of the 
     application copy its contents to the file lab6.2_dst_file.txt

-------------------------------------------------------------------------------}

{-

*Main> :t readFile
readFile :: FilePath -> IO String

*Main> :t writeFile
writeFile :: FilePath -> String -> IO ()

*Main> :m +System.Environment
*Main System.Environment> :t getArgs
getArgs :: IO [String]

-}

module Main where

import System.Environment

main = do
  [f,g] <- getArgs
  s <- readFile f
  writeFile g s
  
{-

ghc --make lab6.1.hs
[2 of 2] Linking lab6.1.exe

./lab6.2.exe lab6.2_src_file.txt lab6.2_dst_file.txt

-}