data List a = List a (List a) | Nil

printList :: Show a => List a -> String
printList Nil = ""
printList (List a Nil) = show a
printList (List a b) = show a ++ "->" ++ printList b


mapList :: (a -> b) -> List a -> List b
mapList _ Nil = Nil
mapList f (List a b) = List (f a) (mapList f b)

grapeList :: List a -> List String
grapeList = mapList (const "grape")

