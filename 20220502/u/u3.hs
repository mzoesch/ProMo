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


-- peer review ::
-- b) Definieren Sie eine Funktion, die zu einer Liste (von Zahlen) alle ihrer geraden Zahlen und
--    das Zweifache ihrer ungeraden Zahlen ausgibt. Beispiel: geradeZahlen2 [1,4,7,8] liefert die Liste [2,4,14,8]

-- aus 2-2 c)
gerade :: Integral  a => a -> Bool
gerade x = x `mod` 2 /= 1

--b :: [Integer]
--b = [x | x <- y]

b' :: [Integer] -> [Integer]
b' [] = []
b' (x:xs)
    | gerade x = x : b' xs
    | True = (x + x) : b' xs

-- c) Definieren Sie eine Funktion, die für alle natürlichen Zahlen im Bereich zwischen zwei Zahlen (einschließlich dieser)
--    eine Liste jener Zahlen zurückgibt, bei denen die Division durch 7 Rest 5 ergibt. Es darf vorausgesetzt werden,
--    dass der erste Parameter immer kleiner als der zweite ist.
-- 
--    Beispiel: div7Rest5 7 28 ergibt [12,19,26]

c :: Integer -> Integer -> [Integer]
c x y = c' [x..y]

c'' :: Integral  a => a -> Bool
c'' x = x `mod` 7 == 5

c' :: [Integer] -> [Integer]
c' [] = []
c' (x:xs)
    | c'' x = x : c' xs
    | otherwise = c' xs

-- d) Definieren Sie eine Funktion, welche die Länge einer Liste berechnet,
--    ohne die vordefinierte Funktion length zu benutzen.

d :: [a] -> Int
d [] = 0
d (_:xs) = 1 + d xs

-- e) Definieren Sie ein Funktion ’dreifach’, die einen Integer Wert als Eingabe erhält und
--    dessen dreifachen Wert zurück gibt (siehe Übungsblatt 1 Aufgabe 2a).

e :: Integer -> Integer
e x = x + x + x

-- f) Definieren Sie ein Funktion nurGrossBuchstaben :: [Char] -> [Char],
--    die nur die Groß- buchstaben eines Strings ausgibt.
--    
--    Definieren Sie eine zweite Funktion, putStrLnNurGrossBuchstaben :: [Char] -> IO (), 
--    die die Funktion nurGrossBuchstaben und deren Ergebnis auf die Konsole ausgibt.
--    Benutzen Sie hierfür den “.” Operator.












