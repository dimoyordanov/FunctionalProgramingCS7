data List a = List a (List a) | Nil deriving (Show, Eq)

instance Semigroup (List a) where
    (<>) :: List a -> List a -> List a
    (<>) Nil b = b
    (<>) (List a b) c = List a ( b <> c)

instance Monoid (List a) where
    mempty :: List a
    mempty = Nil
