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
silnia :: Integer -> Integer
silnia n | n == 0 = 1
         | n > 0 = n * silnia (n - 1)

main =
     do putStrLn "Enter natural number: "
        k <- getLine
        let result = silnia (read k)
        putStrLn (k ++ "! = " ++ show result)

{-
number of women: 74
-}