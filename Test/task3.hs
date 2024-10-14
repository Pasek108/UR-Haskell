{-------------------------------------------------------------------------------

3. Podaj implementacje funkcji f, kt�ra jako argument przyjmuje liste dowolnych 
   wartosci i zwraca liste wartosci o indeksach nieparzystych. 
   (Uwaga: funkcja dzia�a dla list dowolnych typ�w.)

-------------------------------------------------------------------------------}

f [] = []
f [_] = []
f (_:x:xs) = [x] ++ (f xs)

--------------------------------------------------------------------------------

spaces :: String -> Int
spaces "" = 0
spaces (x:xs) | x == ' ' = 1 + (spaces xs)
              | otherwise = (spaces xs)
