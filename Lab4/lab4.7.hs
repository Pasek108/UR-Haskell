{-------------------------------------------------------------------------------

4.7 Using standard functions operating on lists, calculate:

    sum of 1 to 100 numbers of the form 1/n
    product of 1 to 50 numbers of the form (1+n)/(2+n)
    sum of 1 to 1000 numbers of the form 1/(i^2)
    sum of 1 to 1000 numbers of the form (sqrt i)-1/i
    product of 1 to 1000 numbers of the form (i+1)/(i^3)

-------------------------------------------------------------------------------}

sum1 = sum (map (1.0/) [1..100])
sum1' = sum (map (\n -> 1/n) [1..100])
sum1'' = sum [1/n | n <- [1..100]]

{-

ghci> sum1
5.187377517639621

ghci> sum1'
5.187377517639621

ghci> sum1''
5.187377517639621

-}

product1 = product (map (\n -> (1+n)/(2+n)) [1..50])
product1' = product [(1+n)/(2+n) | n <- [1..50]]
product1'' = foldl (*) 1 [(1+n)/(2+n) | n <- [1..50]]

{-

ghci> product1
3.846153846153846e-2

ghci> product1'
3.846153846153846e-2

ghci> product1''
3.846153846153846e-2

-}

sum2 = sum (map (1.0/) (map (^2) [1..1000]))
sum2' = sum (map (\i -> 1/(i^2)) [1..1000])
sum2'' = sum [1/(i^2) | i <- [1..1000]]

{-

ghci> sum2
1.6439345666815615

ghci> sum2'
1.6439345666815615

ghci> sum2''
1.6439345666815615

-}

f i = sqrt i - 1/i

sum3 = sum (map f [1..1000])
sum3' = sum (map (\i -> sqrt i - 1/i) [1..1000])
sum3'' = sum [sqrt i - 1/i | i <- [1..1000]]

{-

ghci> sum3
21089.970416620185

ghci> sum3'
21089.970416620185

ghci> sum3''
21089.970416620185

-}

product2 = product (map (\i -> (i+1)/(i^3)) [1..1000])
product2' = product [(i+1)/(i^3) | i <- [1..1000]]
product2'' = foldl (*) 1 [(i+1)/(i^3) | i <- [1..1000]]

-- 0.0 is wrong result, should be 1 but (i+1)/(i^3) is rounded to 0

{-

ghci> product2
0.0

ghci> product2'
0.0

ghci> product2''
0.0

-}
