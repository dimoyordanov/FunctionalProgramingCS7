data Tree = Node String Tree Tree | Nil

printTree :: Tree -> String
printTree Nil = ""
printTree (Node a b c) = "(" ++ printTree b ++ " " ++ a ++ " " ++ printTree c  ++")"

-- >>> printTree (Node 0 (Node 1 Nil Nil) (Node 2 Nil Nil))
-- "(( 1 ) 0 ( 2 ))"

infiniteLanguageTree :: Tree
infiniteLanguageTree = a ""
    where
        a::String -> Tree
        a b = Node b (a $ 'a':b) (a $ 'b':b)


limitHeight :: Int -> Tree -> Tree
limitHeight _ Nil = Nil
limitHeight 0 a = Nil
limitHeight n (Node a b c) = Node a (limitHeight (n-1) b) (limitHeight (n-1) c)

mapTree :: (String -> String) -> Tree -> Tree
mapTree f Nil = Nil
mapTree f (Node a b c) = Node (f a) (mapTree f b) (mapTree f c)
