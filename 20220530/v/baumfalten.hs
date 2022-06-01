-- baumfalten.hs
import qualified Data.Foldable as F

data BB a = L | K a (BB a) (BB a) deriving (Show, Read, Eq)

instance F.Foldable BB where
    foldr f z L         = z
    foldr f z (K w l r) = f w (F.foldr f (F.foldr f z r) l)

baum1 = K 4 (K 2 (K 1 L L)
                 (K 3 L L)
            )
            (K 5 L L
            )

baum2 = K True (K True (K False L L)
                       (K False L L)
               )
               (K False L L
               )
