-- summemaybe.hs
summe :: Maybe Int -> Maybe Int -> Maybe Int
summe m1 m2 = do
  n1 <- m1
  n2 <- m2
  return (n1 + n2)
