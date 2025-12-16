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

mapList :: (Int -> Int) -> List -> List
mapList f Nil = Nil
mapList f (List a b) = List (f a) (mapList f b)

genList :: List
genList = a 0
    where 
        a n = List n $ a $ n+1

takeList :: Int -> List -> List
takeList 0 _ = Nil
takeList n (List a b) = List a $ takeList (n-1) b


-- >>> printList $ takeList 10 genList
-- "0->1->2->3->4->5->6->7->8->9"
