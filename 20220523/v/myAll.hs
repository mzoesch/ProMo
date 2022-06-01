-- myAll.hs
myAll :: (a -> Bool) -> [a] -> Bool
myAll f [] = True
myAll f (x:xs) = f x && myAll f xs
