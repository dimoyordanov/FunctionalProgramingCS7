mymap :: (t -> a) -> [t] -> [a]
mymap f [] = []
mymap f (x: xs) = (f x): mymap f xs


myfilter :: (t -> Bool) -> [t] -> [t]
myfilter f [] = []
myfilter f (x: xs) = if f x then x: myfilter f xs else myfilter f xs

-- Мисля че няма смисъл да пише foldr и filter
