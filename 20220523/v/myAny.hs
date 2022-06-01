-- myAny.hs
myAny :: (a -> Bool) -> [a] -> Bool
myAny f [] = False
myAny f (x:xs) = f x || myAny f xs
