quicksort :: [Integer] -> [Integer]
quicksort [] = []
quicksort (x: xs) =  quicksort (filter (<x) xs) ++ (x: quicksort (filter (>x) xs))

flatten :: [[a]] -> [a]
flatten = foldr (++) []

-- >>> flatten [[1,6,2,5,3,4],[3,45]]
-- [1,6,2,5,3,4,3,45]
