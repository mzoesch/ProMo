-- myFilter.hs
myFilter :: (a -> Bool) -> [a] -> [a]
myFilter f []                 = []
myFilter f (x:xs) | f x       = x : myFilter f xs
myFilter f (x:xs) | otherwise = myFilter f xs
