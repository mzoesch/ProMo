-- laenge3.hs
laenge :: Num a => [b] -> a
laenge liste = hlaenge 0 liste

hlaenge :: Num a => a -> [b] -> a
hlaenge akk [] = akk
hlaenge akk (_:t) = hlaenge (akk+1) t