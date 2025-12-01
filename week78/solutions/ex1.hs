factoriel :: Integer -> Integer
factoriel 0 = 1
factoriel n = n * factoriel (n-1)

fibonachi :: Integer -> Integer
fibonachi 0 = 0
fibonachi 1 = 1
fibonachi n = fibonachi (n-1) + fibonachi (n-2)

fermatNumber :: Integer -> Integer
fermatNumber n = l 2 (l 2 n) + 1
        where
            l n 0 = 1
            l n m = n * l n (m-1)

-- >>> fermatNumber 7
-- 340282366920938463463374607431768211457
