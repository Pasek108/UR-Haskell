module Main where
 
import System.Environment
 
{-
*Main> :t readFile
readFile :: FilePath -> IO String
*Main> :t writeFile
writeFile :: FilePath -> String -> IO ()
*Main> :m +System.Environment
*Main System.Environment> :t getArgs
getArgs :: IO [String]
-}

main = do
  [f,g] <- getArgs
  s <- readFile f
  writeFile g s