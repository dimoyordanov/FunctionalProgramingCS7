even = [x*2 | x <- [0..]]
odd = [x*2+1 | x <- [0..]]

compose :: (a -> b) -> (b -> c) -> (a->c)
compose f g x = g (f x)

composeNTimes :: Integer -> (a -> a) -> (a->a)
composeNTimes 0 _ = id
composeNTimes n f = compose f (composeNTimes (n-1) f)



fermatNumber :: Integer -> Integer
fermatNumber n = composeNTimes (composeNTimes n (*2) 1) (*2) 1 + 1


fermat = [l x | x <- [0..]]
            where
                l= fermatNumber




isPrime :: Integer -> Bool
isPrime a = not $ any ((==0) . mod a) [2..(a-1)]

primes = [x | x<-[2..], isPrime x]

-- >>> take 10 primes
-- [2,3,5,7,11,13,17,19,23,29]

