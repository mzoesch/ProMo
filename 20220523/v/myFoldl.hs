-- myFoldl.hs
myFoldl :: (b -> a -> b) -> b -> [a] -> b
myFoldl f akk []     = akk
myFoldl f akk (x:xs) = myFoldl f (f akk x) xs
