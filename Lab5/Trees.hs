module Trees
where

-- binary tree definition
data Tree a = Leaf a
            | Node a (Tree a) (Tree a)
            | Null
            

-- number of tree nodes
treeSize :: Tree a -> Int
treeSize Null = 0
treeSize (Leaf _) = 1
treeSize (Node _ left right) = 1 + treeSize left + treeSize right


-- text representation of binary tree
showTree :: Show a => Tree a -> String
showTree Null = "()"
showTree (Leaf x) = show x
showTree (Node x left right) = 
         (show x) ++ " L(" ++ (showTree left) ++ ") R(" ++ (showTree right) ++ ")"
         

-- add a new element to the tree
add :: Ord a => a -> Tree a -> Tree a
add x Null = Leaf x
add x (Leaf y) | x < y = Node y (Leaf x) Null
               | x > y = Node y Null (Leaf x)
               | otherwise = Leaf y

add x (Node y left right) | x < y = Node y (add x left) right
                          | x > y = Node y left (add x right)
                          | otherwise = Node y left right
                      

-- checks if element is in the tree
elemTree :: Ord a => a -> Tree a -> Bool
elemTree e Null = False
elemTree e (Leaf x) = e == x
elemTree e (Node x left right) | e == x = True
                               | e < x = elemTree e left
                               | e > x = elemTree e right


-- count leaf nodes
countLeaves Null = 0
countLeaves (Leaf _) = 1
countLeaves (Node _ left right) = (countLeaves left) + (countLeaves right)


-- transforms tree into an ordered list of values                          
tree2list Null = []
tree2list (Leaf x) = [x]
tree2list (Node x left right) = (tree2list left) ++ [x] ++(tree2list right)


-- transforms an ordered list into a balanced binary tree
list2tree :: Ord a => [a] -> Tree a
list2tree [] = Null
list2tree [x] = Leaf x
list2tree list = Node x (list2tree ltx) (list2tree gtx)
          where
                m = length list `div` 2
                x = list !! m
                ltx = take m list
                gtx = drop (m + 1) list