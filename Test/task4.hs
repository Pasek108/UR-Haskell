{-------------------------------------------------------------------------------

4. Podaj kod pozwalaj ²acy na obliczenie:

   suma od 1 do 2000 liczb postaci 2/(i^2 + 1);
   iloczyn od 20 do 45 liczb postaci sin x · cos x

-------------------------------------------------------------------------------}

suma = sum [2/(i^2 + 1) | i <- [1..2000]]
iloczyn = product [(sin x) * (cos x) | x <- [20..45]]

--------------------------------------------------------------------------------

iloczyn_rek 0 = 1
iloczyn_rek n = (1+n)/(2+n) * (iloczyn_rek (n-1))

iloczyn_list n = product [x | x <- [1..n], odd x]