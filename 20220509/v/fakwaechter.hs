-- fakwaechter.hs
fak :: Integer -> Maybe [Integer]
fak n | n < 0 = Nothing
fak 0 = Just[1]
fak n = let Just[m]= fak (n-1) in Just[n * m]
