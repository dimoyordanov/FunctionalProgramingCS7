len :: [a] -> Integer
len = foldr (\ x -> (+) 1) 0

sum :: [Integer] -> Integer
sum = foldr (+) 0

prod :: [Integer] -> Integer
prod = foldr (*) 0
