-- bbselpred.hs
import Control.Exception
data BB a = L | K a (BB a) (BB a) deriving (Show)
data BBExn = BBleer | BBkeinNachfolger deriving (Show)

instance Exception BBExn

wurzel L         = throw BBleer
wurzel (K x _ _) = x

linkerBaum L               = throw BBkeinNachfolger
linkerBaum (K _ links _)   = links

rechterBaum L              = throw BBkeinNachfolger
rechterBaum (K _ _ rechts) = rechts

istLeer L         = True
istLeer (K _ _ _) = False

b4 = K 1 (K 2 L L) (K 3 (K 4 L L ) L)
b  = K 'a' (K 'b' L L) (K 'c' (K 'd' L L ) L)
