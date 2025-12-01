
myinit :: [a] -> [a]
myinit [] = []
myinit [x] = []
myinit (x: xs) = x: myinit xs

myreverse :: [a] -> [a]
myreverse= foldl (flip (:)) []

myappend :: [a] -> [a] -> [a]
myappend xs a = foldr (:) a xs
