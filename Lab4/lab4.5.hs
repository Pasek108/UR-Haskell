{-------------------------------------------------------------------------------

4.5 In the lists module, define functions that take the number x and a list of 
    numbers of the same type as arguments and return the following as a result:

    - cgtx function the number of list elements greater than x
    - cltx function the number of list elements smaller than x
    - gtx function list elements from input list greater than x
    - ltx function list of elements from the input list less than or equal to x

-------------------------------------------------------------------------------}

cgtx x [] = 0
cgtx x (y:ys) | x < y = 1 + cgtx x ys
              | otherwise = cgtx x ys

{-

ghci> cgtx 5 []
0
ghci> cgtx 5 [1,2,3,4]
0
ghci> cgtx 5 [1,2,3,4,5,6,7,8]
3

-}

cltx x [] = 0
cltx x (y:ys) | x > y = 1 + cltx x ys
              | otherwise = cltx x ys

{-

ghci> cltx 5 []
0
ghci> cltx 5 [5,6,7]
0
ghci> cltx 5 [1,2,3,4,5,6,7,8]
4

-}

gtx _ [] = []
gtx x (y:ys) | x < y = y : gtx x ys
             | otherwise = gtx x ys
             
{-

ghci> gtx 5 []
[]
ghci> gtx 5 [1,2,3,4]
[]
ghci> gtx 5 [1,2,3,4,5,6,7,8,9]
[6,7,8,9]

-}

ltx _ [] = []
ltx x (y:ys) | x >= y = y : ltx x ys
             | otherwise = ltx x ys

{-

ghci> ltx 5 []
[]

ghci> ltx 5 [5,6,7,8]
[5]

ghci> ltx 5 [1,2,3,4,5,6,7,8]
[1,2,3,4,5]

-}
