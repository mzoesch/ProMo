-- bbprefix.hs
data BB a = L | K a (BB a) (BB a) deriving (Show)

prefixCollect :: BB a -> [a]
prefixCollect L                = []
prefixCollect (K w l r) = [w] ++  prefixCollect l ++ prefixCollect r
                      -- w : infixCollect l ++ infixCollect r

b4  = K 1 (K 2 L L) (K 3 (K 4 L L ) L)
sb2 = K "*" (K "+" (K "2" L L) (K "3" L L) ) (K "5" L L)
