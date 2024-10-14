{-------------------------------------------------------------------------------

2. Przyjmijmy, ze liczba zespolona jest zapisywana jako dwuelementowa lista
   wartosci typu Double. Podaj implementacje operatora mnozenia liczb
   zespolonych

-------------------------------------------------------------------------------}

infix 5 ***
(***) :: [Double] -> [Double] -> [Double]
[re1, im1] *** [re2, im2] = [re3, im3]
    where
    re3 = (re1 * re2) - (im1 * im2)
    im3 = (re1 * im2) + (im1 * re2)

--------------------------------------------------------------------------------

lista :: String -> IO ()
lista n = putStrLn ("[" ++ znaki n ++ "] ")
znaki [] = []
znaki [x] = "'" ++ [x] ++ "'"
znaki (x:xs) = (znaki [x]) ++ "," ++ znaki xs