-- binbaumklasse.hs
{-# LANGUAGE FlexibleInstances, MultiParamTypeClasses #-}

class Eq a => BinBaum b a where
    -- istIn oder istNichtIn muss definiert werden
    -- beide dürfen definiert werden
    istIn, istNichtIn :: a -> b a -> Bool
    istIn      wert baum = not (istNichtIn wert baum)
    istNichtIn wert baum = not (istIn    wert baum)

data BBKM a = L | MK a (BBKM a) (BBKM a) deriving (Show)

instance Eq a => BinBaum BBKM a where
    istIn x (MK w _ _)          | x == w    = True
    istIn x (MK _ links rechts) | otherwise = (istIn x links) || (istIn x rechts)
    istIn _ _                   | otherwise = False

data BBBM a = LL | MB a | K (BBBM a) (BBBM a) deriving (Show)

instance Eq a => BinBaum BBBM a where
    istIn x (MB w)             | x == w    = True
    istIn x (K links rechts)   | otherwise = (istIn x links) || (istIn x rechts)
    istIn _ _                  | otherwise = False

baum1 :: BBKM Char
baum1 = MK 'd'
            (MK 'b'
                (MK 'a' L L)
                (MK 'c' L L)
            )
            (MK 'f'
                (MK 'e' L L)
                (MK 'g' L L)
            )

baum2 :: BBBM Char
baum2 = K
            (K
                (MB 'a')
                (MB 'b')
            )
            (K
                (MB 'c')
                LL
            )
