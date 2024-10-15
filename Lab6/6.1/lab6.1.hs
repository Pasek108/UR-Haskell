{-------------------------------------------------------------------------------

6.1 Save the program to a file. Compile and test its operation for all 3 
    versions of the code.

-------------------------------------------------------------------------------}

{-

*Main> :t putStrLn
putStrLn :: String -> IO ()

*Main> :t readLn
readLn :: Read a => IO a

*Main> :t print
print :: Show a => a -> IO ()

*Main> :t read
read :: Read a => String -> a

*Main> :t show
show :: Show a => a -> String

-}

module Main
where

factorial :: Int -> Int
factorial n | n == 0 = 1
            | n > 0 = n * factorial (n - 1)

main =
  do putStrLn "Enter natural number: "
     k <- readLn                  -- 1
     let result = factorial k     -- 2
     print result                 -- 3

-- or instead of 2 and 3
-- print (factorial k)

-- or instead of 1, 2 and 3
-- k <- getLine
-- let result = factorial (read k)
-- putStrLn (show result)

{-

Enter natural number:
12
479001600

Enter natural number:
12
479001600

Enter natural number:
12
479001600

-}
