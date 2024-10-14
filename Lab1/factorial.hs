module Main
where

factorial :: Integer -> Integer
factorial n | n == 0 = 1
            | n > 0  = n * factorial (n - 1)

main =
  do putStrLn "Input natural number: "
     k <- getLine
     let result = factorial (read k)
     putStrLn (show result)
     
