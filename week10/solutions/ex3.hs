newtype EAI = EAI String


instance Semigroup EAI where
    (<>) :: EAI -> EAI -> EAI
    (<>) (EAI a) (EAI b) = EAI $ a ++ b

instance Monoid EAI where
    mempty :: EAI
    mempty = EAI ""
