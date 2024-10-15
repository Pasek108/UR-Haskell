{-------------------------------------------------------------------------------

Task 5 Group 1

A definition of the Tree type is given

data Tree a = Leaf a
            | Node a (Tree a) (Tree a)
            | Null

Provide an implementation of the sumTree function that returns the sum of stored 
numbers in the tree (we assume that type a belongs to class Num)

-------------------------------------------------------------------------------}

data Tree a = Leaf a
            | Node a (Tree a) (Tree a)
            | Null

bt1 = Node 7 (Node 4 (Leaf 2) (Leaf 5)) (Leaf 10)

sumTree Null = 0
sumTree (Leaf a) = a
sumTree (Node a left right) = a + (sumTree left) + (sumTree right)

{-

ghci> sumTree bt1
28

-}

{-------------------------------------------------------------------------------

Task 5 Group 2

Define an evenLeafs function that returns a list of even values in the leaves 
of the binary tree.

evenLeafs :: Integral a => Tree a -> [a]

-------------------------------------------------------------------------------}

evenLeafs :: Integral a => Tree a -> [a]
evenLeafs Null = []
evenLeafs (Leaf a) | rem a 2 == 0 = [a]
                   | otherwise = []
evenLeafs (Node a left right) = (evenLeafs left) ++ (evenLeafs right)

{-

ghci> evenLeafs bt1
[2,10]

-}
