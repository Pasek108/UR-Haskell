{-------------------------------------------------------------------------------

5.5 In Trees module implement a function that adds a new element to the tree. 
    We assume that the argument tree is ordered and adding an element does not 
    disturb the order (elements in the left subtree are smaller and in the right 
    subtree are greater than the values in the node). If an element with a given 
    value already exists in the tree, we do not add a new node to the tree.

add :: (Ord a) => a -> Tree a -> Tree a

    - Add value 6 to the drawing of the b1 tree
    - Add value 8 to the result of the previous task

-------------------------------------------------------------------------------}

import Trees

{-        

1. Adding value to an empty tree

              5
add 5 o   =   *

2. Adding value to a one-element tree

      5       5
add 5 *   =   *

      5       5
add 3 *   =   *
             / \
           3*   o

      5       5
add 7 *   =   *
             / \
            o   *7

3. Adding value to a non-trivial tree

      5       5
add 5 *   =   *
    _/ \_   _/ \_
   / \ / \ / \ / \

      5       5
add 3 *   =   *
    _/ \_   _/ \_
   / \ / \ /3\ / \

      5       5
add 7 *   =   *
    _/ \_   _/ \_
   / \ / \ / \ /7\  
-}

bt1 = Node 7 (Node 4 (Leaf 2) (Leaf 5)) (Leaf 10)

{-

       7
bt1   / \
     4   10
    / \
   2   5

-}

{-

ghci> showTree (add 6 bt1)
"7 L(4 L(2) R(5 L(()) R(6))) R(10)"

       7
bt1   / \
     4   10
    / \
   2   5
      / \
     o   6

-}

{-

ghci> showTree (add 8 (add 6 bt1))
"7 L(4 L(2) R(5 L(()) R(6))) R(10 L(8) R(()))"

       ___7___
bt1   /       \
     4        10
    / \      /  \
   2   5    8    o
      / \
     o   6

-}
