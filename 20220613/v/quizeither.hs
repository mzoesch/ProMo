-- quizeither

data Fehler = F1 | F2 deriving Show

summe :: Either Fehler Int -> Either Fehler Int -> Either Fehler Int
summe e1 e2 = do
 n1 <- e1
 n2 <- e2
 return (n1 + n2)
