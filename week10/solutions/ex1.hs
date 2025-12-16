data List a = List a (List a)| Nil

head :: List a -> Maybe a
head Nil = Nothing
head (List a t) = Just a 

tail :: List a -> Maybe (List a)
tail Nil = Nothing
tail (List a t) = Just t 


head' :: List a -> Either String a
head' Nil = Left "No first element"
head' (List a t) = Right a 

tail' :: List a -> Either String (List a)
tail' Nil = Left "No tail since list is empty"
tail' (List a t) = Right t 
