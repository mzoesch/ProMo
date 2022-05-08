-- 2-2

-- a) Schreiben Sie eine Funktion alleGleich :: Eq a => a -> a -> a -> Bool, die überprüft, ob drei Integer-Zahlen gleich sind.
alleGleich :: Eq a => a -> a -> a -> Bool
alleGleich x y z = x == y && y == z

-- b) Schreiben Sie eine Funktion ungerade :: Integral a => a -> Bool, die überprüft, ob eine Integer Zahl ungerade ist.
--    Verwenden Sie hierzu nicht die vordefinierten Funktionen even oder odd.
ungerade :: Integral a => a -> Bool
ungerade x = x `mod` 2 == 1

-- c) Schreiben Sie eine Funktion gerade :: Integral a => a -> Bool, die überprüft, ob eine Integer Zahl gerade ist.
--    Verwenden Sie hierzu nicht die vordefinierten Funktionen odd oder even.

gerade :: Integral  a => a -> Bool
gerade x = x `mod` 2 == 0
