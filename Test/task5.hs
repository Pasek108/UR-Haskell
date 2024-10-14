{-------------------------------------------------------------------------------

5. Dana jest definicja typu Tree

   data Tree a = Leaf a
               | Node a (Tree a) (Tree a)
               | Null

   Podaj implementacje funkcji sumTree, która zwraca sume liczb przechowywanych 
   w drzewie (zak³adamy, ze typ a nalezy do klasy Num)

-------------------------------------------------------------------------------}

data Tree a = Leaf a
            | Node a (Tree a) (Tree a)
            | Null

bt1 = Node 7 (Node 4 (Leaf 2) (Leaf 5)) (Leaf 10)

sumTree Null = 0
sumTree (Leaf a) = a
sumTree (Node a left right) = a + (sumTree left) + (sumTree right)

--------------------------------------------------------------------------------