f :: (a -> b -> c) -> (d -> b) -> (d -> a) -> d -> c
f g h j x = g (j x) (h x)

-- g :: a -> b -> c
-- h :: d -> b
-- j :: d -> a
-- x :: d



produkt :: Integral a => a -> a
produkt n | n <= 1 = 1
produkt n | otherwise = n * produkt (n-1)
