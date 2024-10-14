{-------------------------------------------------------------------------------

4.2 In the Lists module, define:

    - sum1 function, which takes a list of numbers as an argument and returns 
      the sum of elements with odd indexes
    - sum2 function, which takes a list of numbers as an argument and returns 
      the sum of elements with even indexes
    - sum3 function, which takes a list of numbers as an argument and returns 
      the sum of elements with indexes 3, 6, 9, ...

-------------------------------------------------------------------------------}

module Lists
where

sum1 [] = 0
sum1 [_] = 0
sum1 (_:x:xs) = x + sum1 xs

{-

ghci> sum1 []
0
ghci> sum1 [1]
0
ghci> sum1 [1,2]
2
ghci> sum1 [1,2,3]
2
ghci> sum1 [1,2,3,4]
6

-}

sum2 [] = 0
sum2 [x] = x
sum2 (x:_:xs) = x + sum2 xs

{-

ghci> sum2 []
0
ghci> sum2 [1]
1
ghci> sum2 [1,2]
1
ghci> sum2 [1,2,3]
4

-}

sum3 xs | length xs <= 3 = 0
sum3 (_:_:_:x:xs) = x + sum3 (x:xs)

{-

ghci> sum3 []
0
ghci> sum3 [1]
0
ghci> sum3 [0,1]
0
ghci> sum3 [0,1,2]
0
ghci> sum3 [0,1,2,3]
3
ghci> sum3 [0,1,2,3,4,5,6]
9

-}
