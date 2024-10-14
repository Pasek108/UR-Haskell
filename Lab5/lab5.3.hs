{-------------------------------------------------------------------------------

5.3 Define a trapezoidalRule function that determines the approximate value of 
    the definite integral using the trapezoid method. 
    
The approximate value of the integral is determined from the formula:
(h/2) * (f(a) + f(b)) + h * (f(x1) + f(x2) + ... + f(xn-1))

Test the trapezoidalRule function for the examples in task 5.2 and compare the 
results

-------------------------------------------------------------------------------}

trapezoidalRule :: (Float -> Float) -> Float -> Float -> Int -> Float
trapezoidalRule (f) a b n = (h/2) * (f(a) + f(b)) + h * sum [f x | x <- points]
  where
    h = (b - a) / fromIntegral(n)
    points = [a + fromIntegral(i) * h | i <- [1 .. n-1]]

integral1 = trapezoidalRule sin 0 pi 100
integral1' = trapezoidalRule sin 0 pi 1000

integral2 = trapezoidalRule sqrt 0 1 100
integral2' = trapezoidalRule sqrt 0 1 1000

integral3 = trapezoidalRule (^2) 0 1 100
integral3' = trapezoidalRule (^2) 0 1 1000

integral4 = trapezoidalRule (\x -> x^3 + 2*x) 0 2 100
integral4' = trapezoidalRule (\x -> x^3 + 2*x) 0 2 1000

{-

ghci> integral1
1.9998356
ghci> integral1'
1.9999988

ghci> integral2
0.6664629
ghci> integral2'
0.66666037

ghci> integral3
0.33334997
ghci> integral3'
0.33333352

ghci> integral4
8.0004
ghci> integral4'
8.000006

-}
