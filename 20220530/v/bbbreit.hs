-- bbbreit.hs
data BB a = L | K a (BB a) (BB a) deriving (Show)

breit :: BB a -> [a]
breit baum = hbreit [baum]
             where hbreit :: [BB a] -> [a]
                   hbreit []               = []
                   hbreit (L : list)       = hbreit list
                   hbreit (K w l r : list) = w : hbreit (list ++ [l, r])

b4  = K 1 (K 2 L L) (K 3 (K 4 L L ) L)
sb2 = K "*" (K "+" (K "2" L L) (K "3" L L) ) (K "5" L L)
