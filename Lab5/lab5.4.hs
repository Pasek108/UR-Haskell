{-------------------------------------------------------------------------------

5.4.1 In the Trees module, place the following binary tree definition:

data Tree a = Leaf a
            | Node a (Tree a) (Tree a)
            | Null

The third Null constructor was used as an empty node, to indicate the absence 
of a left or right subtree

-------------------------------------------------------------------------------}

import Trees

{-------------------------------------------------------------------------------

5.4.2 Define the treeSize function to include the changed Tree type definition
    
treeSize :: Tree a -> Int
treeSize (Leaf _) = 1
treeSize (Node _ left right) = 1 + treeSize left + treeSize right

-------------------------------------------------------------------------------}

bt_1 = Null
bt_2 = Leaf 5
bt_3 = Node 5 (Leaf 3) Null
bt_4 = Node 5 Null (Leaf 7)
bt_5 = Node 5 (Leaf 3) (Leaf 7)

{-

ghci> treeSize bt_1
0
ghci> treeSize bt_2
1
ghci> treeSize bt_3
2
ghci> treeSize bt_4
2
ghci> treeSize bt_5
3

-}

{-------------------------------------------------------------------------------

5.4.3 Implement the showTree function that generates a text representation of
      binary trees as shown in the examples:

showTree :: (Show a) => Tree a -> String
 
bt1 = Node 7 (Node 4 (Leaf 2) (Leaf 5)) (Leaf 10)
 
bt2 = Node 7 (Node 4 (Leaf 2) (Leaf 5)) 
             (Node 10 (Leaf 9) (Node 13 (Leaf 11) (Leaf 15)))
 
bt3 = Node 7 (Leaf 1) Null
 
-- showTree bt1
-- "7 L(4 L(2) R(5)) R(10)"
-- showTree bt2
-- "7 L(4 L(2) R(5)) R(10 L(9) R(13 L(11) R(15)))"
-- showTree bt3
-- "7 L(1) R(())"

-------------------------------------------------------------------------------}

bt1 = Node 7 (Node 4 (Leaf 2) (Leaf 5)) (Leaf 10)

bt2 = Node 7 (Node 4 (Leaf 2) (Leaf 5)) 
             (Node 10 (Leaf 9) (Node 13 (Leaf 11) (Leaf 15)))

bt3 = Node 7 (Leaf 1) Null

{-

ghci> showTree bt1
"7 L(4 L(2) R(5)) R(10)"

ghci> showTree bt2
"7 L(4 L(2) R(5)) R(10 L(9) R(13 L(11) R(15)))"

ghci> showTree bt3
"7 L(1) R(())"

-}
