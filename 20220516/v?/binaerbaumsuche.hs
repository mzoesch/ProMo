-- binaerbaumsuche.hs
data BB a = L | Knt a (BB a) (BB a)
            deriving (Show)

suche :: (Eq a) => a -> BB a -> Bool
suche x (Knt w _ _)          | x == w    = True
suche x (Knt _ links rechts) | otherwise = (suche x links) || (suche x rechts)
suche _ _                    | otherwise = False

b :: BB Char
b = Knt 'd'
      (Knt 'b'
         (Knt 'a' L L)
         (Knt 'c' L L)
      )
      (Knt 'f'
         (Knt 'e' L L)
         (Knt 'g' L L)
      )
