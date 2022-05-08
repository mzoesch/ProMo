-- 2-3

-- a) Definieren Sie eine Funktion, die alle ungeraden Elemente einer Liste (von Zahlen) ausgibt.

-- aus 2-2 b)
ungerade :: Integral a => a -> Bool
ungerade x = x `mod` 2 == 1

a :: [Integer] -> [Integer]
a [] = []
a (x:xs)
    | ungerade x = x : a xs
    | True = a xs


-- b) Definieren Sie eine Funktion, die zu einer Liste (von Zahlen) alle ihrer geraden Zahlen und
--    das Zweifache ihrer ungeraden Zahlen ausgibt. Beispiel: geradeZahlen2 [1,4,7,8] liefert die Liste [2,4,14,8]

-- aus 2-2 c)
gerade :: Integral  a => a -> Bool
gerade x = x `mod` 2 /= 1

b :: [Integer]
b = [x | x <- y]

b' :: [Integer] -> [Integer]
b' [] = []
b'  (x:xs)
    | gerade x = x : b' xs
    | True = (x + x) : b' xs



















