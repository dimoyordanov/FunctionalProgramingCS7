import Data.Ratio (numerator, denominator)
newtype Drobi = Drobi (Int,Int) deriving (Eq)

instance Show Drobi where
    show (Drobi (a,b)) = show a ++ "/" ++ show b

instance Num Drobi where
    (+) (Drobi (a1,a2)) (Drobi (b1,b2)) = let l = gcd (a1*b2+b1*a2) (b2*a2) in Drobi (div (a1*b2+b1*a2) l, div (b2*a2) l)
    (*) (Drobi (a1,a2)) (Drobi (b1,b2)) = let l = gcd (a1*b1) (a2*b2) in Drobi (div (a1*b1) l, div (a2*b2) l)
    negate (Drobi (a,b)) = Drobi (-a,b)
    abs (Drobi (a,b)) = Drobi (abs a, abs b)
    signum (Drobi (a,b)) = Drobi (signum a, signum b)
    fromInteger a = Drobi (fromInteger a,1)

instance Fractional Drobi where
    (/) (Drobi (a1,a2)) (Drobi (b1,b2)) = let l = gcd (a1*b2) (a2*b1) in Drobi (div (a1*b2) l, div (a2*b1) l)
    fromRational a = Drobi (fromInteger (numerator a), fromInteger (denominator a))

-- >>> let a = Drobi (1,2) + Drobi (1,3)
