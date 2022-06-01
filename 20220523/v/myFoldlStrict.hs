-- myFoldlStrict.hs 
myFoldlStrict :: (b -> a -> b) -> b -> [a] -> b
myFoldlStrict f akk []     = akk
myFoldl f akk (x:xs) = (myFoldlStrict $! f akk x) xs
