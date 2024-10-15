{-------------------------------------------------------------------------------

Task 4 Group 1

Write the code allowing the calculation:

- the sum of 1 to 2000 numbers of the form 2/(i^2 + 1);
- product of 20 to 45 numbers of the form sin x · cos x

-------------------------------------------------------------------------------}

suma = sum [2/(i^2 + 1) | i <- [1..2000]]
iloczyn = product [(sin x) * (cos x) | x <- [20..45]]

{-

ghci> suma
2.1523483449787726

ghci> iloczyn
1.7351710457045287e-17

-}

{-------------------------------------------------------------------------------

Task 4 Group 2

Provide implementations of functions that evaluate:

- product of 1 and numbers of the form (1+i) / (2+i)   -- recursively
- product of the series 1 * 3 * 5 * ... * 2n-1         -- on lists

-------------------------------------------------------------------------------}

iloczyn_rek 0 = 1
iloczyn_rek n = (1+n)/(2+n) * (iloczyn_rek (n-1))

iloczyn_list n = product [x | x <- [1..n], odd x]

{-

ghci> iloczyn_rek 0
1.0
ghci> iloczyn_rek 5
0.28571428571428575

ghci> iloczyn_list 0
1
ghci> iloczyn_list 5
15

-}
