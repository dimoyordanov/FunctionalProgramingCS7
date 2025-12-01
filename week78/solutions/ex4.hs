accumulate :: (Integer -> Integer -> Integer) -> Integer -> Integer -> Integer -> Integer
accumulate op init a b = if a>=b then init else op a (accumulate op init (a+1) b)

sumRange :: Integer -> Integer -> Integer
sumRange = accumulate (*) 0

prodRange :: Integer -> Integer -> Integer
prodRange = accumulate (*) 1
