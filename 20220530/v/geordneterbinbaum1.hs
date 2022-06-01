-- geordneterbinbaum1.hs
import Criterion.Main

main = defaultMain [
   bgroup "geordneterbinbaum1" [ bench "a" $ whnf f 'a'
                               , bench "d" $ whnf f 'd'
                               , bench "z" $ whnf f 'z'
                               ]
   ]

f x = istIn x baum

data BB a = L | MK a (BB a) (BB a) deriving (Show)

istIn :: Ord a => a -> BB a -> Bool
istIn x (MK w links _)  | x < w     = istIn x links
istIn x (MK w _ _)      | x == w    = True
istIn x (MK w _ rechts) | otherwise = (istIn x rechts)
istIn _ _               | otherwise = False

baum :: BB Char
baum = MK 'e'
            (MK 'c'
                (MK 'b' L L)
                (MK 'd' L L)
            )
            (MK 'g'
                (MK 'f' L L)
                (MK 'h' L L)
            )
