{-------------------------------------------------------------------------------

2.6 Define the Math module and put in it the definitions of the functions 
    f1,…,f8 defined as below. Define functions in two versions: traditional 
    and using sections.

    f1 decreases the argument taken by 2; Note: (+(-2))
    f2 returns the remainder of dividing the argument by 5
    f3 returns the result of comparing the argument with the number 10
    f4 returns the integer part of dividing the argument by 8
    f5 returns True if the argument is greater than 100 and False otherwise
    f6 returns the remainder of dividing 5 by the function argument
    f7 returns the integer part of dividing 8 by the function argument
    f8 triples the fetched argument

-------------------------------------------------------------------------------}

module Math
where

f1 x = x - 2
f1' x = x + (-2)
f1'' = (+ (-2))

{-

ghci> f1 4
2
ghci> f1' 4
2
ghci> f1'' 4
2

-}

f2 x = rem x 5
f2' x = x `rem` 5
f2'' = (`rem` 5)

{-

ghci> f2 8
3
ghci> f2' 8
3
ghci> f2'' 8
3

-}

f3 x = x == 10
f3' = (== 10)

{-

ghci> f3 10
True
ghci> f3' 10
True

-}

f4 x = div x 8
f4' = (`div` 8)

{-

ghci> f4 10
1
ghci> f4' 10
1

-}

f5 x = x > 100
f5' = (> 100)

{-

ghci> f5 12
False
ghci> f5' 12
False

-}

f6 x = rem 5 x
f6' = (5 `rem`)

{-

ghci> f6 16
5
ghci> f6' 16
5

-}

f7 x = div 8 x
f7' = (8 `div`)

{-

ghci> f7 3
2
ghci> f7' 3
2

-}

f8 x = x * 3
f8' = (* 3)

{-

ghci> f8 21
63
ghci> f8' 21
63

-}
