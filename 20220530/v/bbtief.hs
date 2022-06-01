-- bbtief.hs
data BB a = L | K a (BB a) (BB a) deriving (Show)

tief :: b -> (a -> b -> b -> b) -> BB a -> b
tief wL fK L         = wL
tief wL fK (K w l r) = fK w (tief wL fK l) (tief wL fK r)

infixCollect   = tief [] (\ w l1 l2 -> l1 ++ [w] ++ l2)

prefixCollect  = tief [] (\ w l1 l2 -> [w] ++ l1 ++ l2)

postfixCollect = tief [] (\ w l1 l2 -> l1 ++ l2 ++ [w])
