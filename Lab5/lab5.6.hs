{-------------------------------------------------------------------------------

5.6 Add the elemTree function to the Trees module. Correct the function to 
    include the Null constructor.
    
elemTree :: Ord a => a -> Tree a -> Bool
elemTree e (Leaf x) = e == x
elemTree e (Node x left right) | e == x = True
                               | e < x = elemTree e left
                               | e > x = elemTree e right

    In the Trees module, implement the countLeaves function that returns 
    information about the number of leaves in the tree.

-------------------------------------------------------------------------------}

import Trees

bt1 = Node 7 (Node 4 (Leaf 2) (Leaf 5)) (Leaf 10)
         
{-

ghci> elemTree 3 Null
False

ghci> elemTree 3 (Leaf 3)
True

ghci> elemTree 3 (Leaf 5)
False

ghci> elemTree 3 bt1
False

ghci> elemTree 4 bt1
True

-}

{-

ghci> countLeaves Null
0

ghci> countLeaves (Leaf 5)
1

ghci> countLeaves (add 6 bt1)
3

-}
