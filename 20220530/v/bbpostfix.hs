-- bbpostfix.hs
data BB a = L | K a (BB a) (BB a) deriving (Show)

postfixCollect :: BB a -> [a]
postfixCollect L                = []
postfixCollect (K w l r) = postfixCollect l ++ postfixCollect r ++ [w]

b4  = K 1 (K 2 L L) (K 3 (K 4 L L ) L)
sb2 = K "*" (K "+" (K "2" L L) (K "3" L L) ) (K "5" L L)
