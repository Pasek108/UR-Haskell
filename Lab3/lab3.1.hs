{-------------------------------------------------------------------------------

3.1 Define the Math module and put in it the definition of the function f 
    defined as follows:

    - for x < -10 the value of the function is equal to the square of x
    - for -10 <= x < 0 the value of the function is equal to the sine of the
      number x
    - for 0 <= x <= 2 the value of the function is equal to the square root of
      the number x
    - for values greater than 2 the value of the function is not defined (We do
      not define it for x > 2.)

Load the Math module and test the function f. What happens when it is called 
with an argument greater than 2?

-------------------------------------------------------------------------------}

module Math
where

f x | x < -10 = x * x
    | -10 <= x && x < 0 = sin x
    | 0 <= x && x <= 2 = sqrt x

{-

ghci> f (-12)
144.0

ghci> f (-pi)
-1.2246063538223773e-16

ghci> f (1)
1.0

ghci> f (5)
*** Exception: lab3.hs:(30,1)-(32,31): Non-exhaustive patterns in function f

-}

f' x | x < -10 = x * x
     | -10 <= x && x < 0 = sin x
     | 0 <= x && x <= 2 = sqrt x
     | otherwise = undefined
     
{-

ghci> f' (-12)
144.0

ghci> f' (-pi)
-1.2246063538223773e-16

ghci> f' (1)

1.0
ghci> f' (5)
*** Exception: Prelude.undefined

-}
