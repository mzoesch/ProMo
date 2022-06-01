-- geordneterbinbaum.hs
data BB a = L | K a (BB a) (BB a) deriving (Show)

istIn :: Ord a => a -> BB a -> Bool
istIn _ L                          = False
istIn x (K w links _)  | x < w     = istIn x links
istIn x (K w _ _)      | x == w    = True
istIn x (K w _ rechts) | otherwise = (istIn x rechts)

baum :: BB Char
baum = K 'e'
            (K 'c'
                (K 'b' L L)
                (K 'd' L L)
            )
            (K 'g'
                (K 'f' L L)
                (K 'h' L L)
            )
