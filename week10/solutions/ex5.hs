data Tree = Tree Integer Tree Tree | Nil
    deriving Show

pairs :: [(Integer, Integer)]
pairs = [(x,y) | n <- [1..], x <- [1..n], y <- [1..n] ,x+y == n]

trees :: Integer -> Integer -> [Tree]
trees 0 0 = [Nil]
trees 1 m = [Tree m Nil Nil]
trees n m = concat [zipWith (Tree k) (trees lv lh) (trees rv rh)  | k <- [0..m], lv <- [0..k], rv <- [0..lv], lh <- [0..n], rh <- [0..lh]]

treesGen :: [Tree]
treesGen = concat [trees n m | (n,m) <- pairs]

