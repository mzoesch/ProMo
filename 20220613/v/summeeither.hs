-- summeeither.hs
summe :: Either String Int -> Either String Int
                           -> Either String Int
summe e1 e2 = do
  n1 <- e1
  n2 <- e2
  return (n1 + n2)
