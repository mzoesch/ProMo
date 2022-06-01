-- bbinfixakk.hs
data BB a = L | K a (BB a) (BB a) deriving (Show)

infixCollect :: BB a -> [a]
infixCollect b = hCollect b []
                 where hCollect L         akk = akk
                       hCollect (K w l r) akk = hCollect l (w:hCollect r akk)

b4  = K 1 (K 2 L L) (K 3 (K 4 L L ) L)
sb2 = K "*" (K "+" (K "2" L L) (K "3" L L) ) (K "5" L L)
