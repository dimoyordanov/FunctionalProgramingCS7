composeInt :: (Int -> Int) -> (Int -> Int) -> (Int->Int)
composeInt f g x = g (f x)

compose :: (a -> b) -> (b -> c) -> (a->c)
compose f g x = g (f x)

composeNTimes :: Integer -> (a -> a) -> (a->a)
composeNTimes 0 _ = id
composeNTimes n f = compose f (composeNTimes (n-1) f)

fermatNumber :: Integer -> Integer
fermatNumber n = composeNTimes (composeNTimes n (*2) 1) (*2) 1 + 1
