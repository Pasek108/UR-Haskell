{-------------------------------------------------------------------------------

5.7 In the Trees module, implement the tree2list function that transforms a tree 
    into an ordered list of values.

    In the Trees module, implement the list2tree function that transforms an 
    ordered list into a balanced binary tree - the heights of the right and left 
    subtrees for each node can differ by at most 1.

-------------------------------------------------------------------------------}

import Trees

bt1 = Node 7 (Node 4 (Leaf 2) (Leaf 5)) (Leaf 10)

{-

ghci> tree2list Null
[]

ghci> tree2list (Leaf 5)
[5]

ghci> tree2list bt1
[2,4,5,7,10] 

ghci> tree2list (add 6 bt1)
[2,4,5,6,7,10]

-}

{-

ghci> showTree (list2tree [])
"()"

ghci> showTree (list2tree [5])
"5"

ghci> showTree (list2tree [1,3,5,7])
"5 L(3 L(1) R(())) R(7)"

ghci> showTree (add 6 bt1)
"7 L(4 L(2) R(5 L(()) R(6))) R(10)"

ghci> showTree (list2tree (tree2list (add 6 bt1)))
"6 L(4 L(2) R(5)) R(10 L(7) R(()))"

-}
