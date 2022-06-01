-- myFoldr.hs
myFoldr :: (a -> b -> b) -> b -> [a] -> b
myFoldr f akk []     = akk
myFoldr f akk (x:xs) = f x (myFoldr f akk xs)
