{-------------------------------------------------------------------------------

5.2 Create an Integration module and include the following code in it. Complete 
    the code of the rectangleRule function that determines the approximate value
    of the definite integral using the rectangle method.

rectangleRule :: (Float -> Float) -> Float -> Float -> Int -> Float
rectangleRule (f) a b n = -- missing code --
  where
    h = (b - a) / fromIntegral(n)
    points = [a + fromIntegral(i) * h | i <- [1 .. n]]

f - integrand
a, b - ends of the integration interval
n - number of intervals into which we divide the integration interval


    Test the operation of the rectangleRule function by determining the integral of the function:

    - sin on the interval (0, pi) - exact value 2
    - sqrt on the interval (0,1) - exact value 2/3
    - x^2 on the interval (0,1) - exact value 1/3
    - x^3 + 2x on the interval (0,2) - exact value 8

In the last two cases, use sections and lambda notation to specify the integrand function.

-------------------------------------------------------------------------------}

{-

* Right Riemann sum

   y               / y = f(x)
   |            __/
   |           | /|
   |           |/ |
   |         __/  |
   |        | /|  |
   |        |/ |  |
   |      __/  |  |
   |     | /|  |  |
   |     |/ |  |  |
   |     /  |  |  |
---+--+--+--+--+--+--+--+---> x
   |     x0 x1 x2 x3
   |     a        b

Partitions: 3

Area(3) = (x1 - x0)*f(x1) + (x2 - x1)*f(x2) + (x3 - x2)*f(x3)

A:  x_i - x_i-1 = h = (b - a)/3  for  i = 1..3

                                          3_
                                          \
Area(3) = h*(f(x1) + f(x2) + f(x3)) = h * /_ f(x_i)
                                          i=1

Partitions: n

Area(n) = (x1 - x0)*f(x1) + (x2 - x1)*f(x2) + ... + (x_n - x_n-1)*f(x_n)

A:  x_i - x_i-1 = h = (b - a)/n  for  i = 1..n

                                                 n_
                                                 \
Area(n) = h*(f(x1) + f(x2) + ... + f(x_n)) = h * /_ f(x_i)
                                                 i=1
-}

rectangleRule :: (Float -> Float) -> Float -> Float -> Int -> Float
rectangleRule (f) a b n = h * sum [f x | x <- points]
  where
    h = (b - a) / fromIntegral(n)
    points = [a + fromIntegral(i) * h | i <- [1 .. n]]

integral1 = rectangleRule sin 0 pi 100
integral1' = rectangleRule sin 0 pi 1000

integral2 = rectangleRule sqrt 0 1 100
integral2' = rectangleRule sqrt 0 1 1000

integral3 = rectangleRule (^2) 0 1 100
integral3' = rectangleRule (^2) 0 1 1000

integral4 = rectangleRule (\x -> x^3 + 2*x) 0 2 100
integral4' = rectangleRule (\x -> x^3 + 2*x) 0 2 1000

{-

ghci> integral1
1.9998356
ghci> integral1'
1.9999988

ghci> integral2
0.6714629
ghci> integral2'
0.6671604

ghci> integral3
0.33835
ghci> integral3'
0.33383355

ghci> integral4
8.120399
ghci> integral4'
8.012006

-}
