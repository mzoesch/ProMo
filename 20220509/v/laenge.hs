-- laenge.hs
laenge :: [a] -> Int
laenge [] = 0
laenge (_:t) = 1 + laenge t

-- endrekursiv
laenge' :: [a] -> Int
laenge' liste = hlaenge 0 liste

hlaenge :: Int -> [a] -> Int
hlaenge akk [] = akk
hlaenge akk (_:t) = hlaenge (akk+1) t
