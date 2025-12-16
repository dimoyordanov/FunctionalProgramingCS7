data Tree = Node Int Tree Tree | Nil

printTree :: Tree -> String
printTree Nil = ""
printTree (Node a b c) = "(" ++ printTree b ++ " " ++show a ++ " " ++ printTree c  ++")"

-- >>> printTree (Node 0 (Node 1 Nil Nil) (Node 2 Nil Nil))
-- "(( 1 ) 0 ( 2 ))"

search :: Tree -> Int -> Bool
search Nil _ = False
search (Node a b c) v
    | a == v = True
    | a > v = search b v
    | otherwise = search c v


addElementBinaryTree :: Tree -> Int -> Tree
addElementBinaryTree Nil x = Node x Nil Nil
addElementBinaryTree (Node a b c) x
    | a == x = error "Value is in tree ;("
    | a > x = Node a (addElementBinaryTree b x) c
    | otherwise = Node a b (addElementBinaryTree c x)

