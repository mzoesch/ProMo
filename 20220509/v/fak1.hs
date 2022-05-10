-- fak1.hs

fak :: Integer -> Integer
fak 0 = 1
fak n = n * fak (n-1)
