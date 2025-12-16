pairs :: [(Integer, Integer)]
pairs = [(x,y) | n <- [1..], x <- [1..n], y <- [1..n] ,x+y == n]

allNatsSizer :: Integer -> Integer -> [[Integer]]
allNatsSizer 0 0 = [[]]
allNatsSizer 1 m = [[m]]
allNatsSizer n m = concat [map (k:) (allNatsSizer (n-1) (m-k)) | k <- [0..m]]

allNats :: [[Integer]]
allNats = concat [allNatsSizer n m | (n,m) <- pairs ]

-- >>> take 20 allNats
-- [[1],[2],[0,1],[1,0],[3],[0,2],[1,1],[2,0],[0,0,1],[0,1,0],[1,0,0],[4],[0,3],[1,2],[2,1],[3,0],[0,0,2],[0,1,1],[0,2,0],[1,0,1]]
