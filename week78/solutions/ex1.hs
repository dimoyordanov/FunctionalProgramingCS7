data List = List Int List | Nil

printList :: List -> String
printList Nil = ""
printList (List a Nil) = show a
printList (List a b) = show a ++ "->" ++ printList b

addElement :: List -> Int -> List
addElement = flip List

appendList :: List -> List -> List
appendList Nil = id 
appendList (List a b) = List a.appendList b

