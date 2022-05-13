-- 2-3

-- a) Definieren Sie eine Funktion, die alle ungeraden Elemente einer Liste (von Zahlen) ausgibt.

-- aus 2-2 b)
ungerade :: Integral a => a -> Bool
ungerade x = x `mod` 2 == 1

-- Keine List-Comprehension
a :: [Integer] -> [Integer]
a [] = []
a (x:xs)
    | ungerade x = x : a xs
    | otherwise = a xs

-- Nur ganze Zahlen
-- a' :: [Integer] -> [Integer]

-- Richtige Antwort
a' :: Integral a => [a] -> [a]
a' xs = [x | x <- xs, ungerade x]

-- peer review ::
-- b) Definieren Sie eine Funktion, die zu einer Liste (von Zahlen) alle ihrer geraden Zahlen und
--    das Zweifache ihrer ungeraden Zahlen ausgibt. Beispiel: geradeZahlen2 [1,4,7,8] liefert die Liste [2,4,14,8]

-- aus 2-2 c)
gerade :: Integral  a => a -> Bool
gerade x = x `mod` 2 /= 1

-- Keine List-Comprehension
b' :: [Integer] -> [Integer]
b' [] = []
b' (x:xs)
    | gerade x = x : b' xs
    | otherwise = (x + x) : b' xs

-- Richtige Antworten
b'' :: Integral a => [a] -> [a]
b'' xs = [if gerade x then x else x*2 | x <- xs]
b''' :: Integral a => [a] -> [a]
b''' xs = [x + (x `mod` 2) * x | x <- xs]

-- c) Definieren Sie eine Funktion, die für alle natürlichen Zahlen im Bereich zwischen zwei Zahlen (einschließlich dieser)
--    eine Liste jener Zahlen zurückgibt, bei denen die Division durch 7 Rest 5 ergibt. Es darf vorausgesetzt werden,
--    dass der erste Parameter immer kleiner als der zweite ist.
-- 
--    Beispiel: div7Rest5 7 28 ergibt [12,19,26]

-- Keine List-Comprehension 
c :: Integer -> Integer -> [Integer]
c x y = c' [x..y]

c'' :: Integral  a => a -> Bool
c'' x = x `mod` 7 == 5

c' :: [Integer] -> [Integer]
c' [] = []
c' (x:xs)
    | c'' x = x : c' xs
    | otherwise = c' xs

-- Richtige Antwort
-- cr :: c richtig
cr :: Integral a => a -> a -> [a]
cr a b = [x | x <- [a..b], x `mod` 7 == 5]

-- d) Definieren Sie eine Funktion, welche die Länge einer Liste berechnet,
--    ohne die vordefinierte Funktion length zu benutzen.

-- Keine List-Comprehension
d :: [a] -> Int
d [] = 0
d (_:xs) = 1 + d xs

-- Richtige Antwort
d' :: [a] -> Integer
d' xs = sum[1 | _ <- xs]

-- e) Definieren Sie ein Funktion ’dreifach’, die einen Integer Wert als Eingabe erhält und
--    dessen dreifachen Wert zurück gibt (siehe Übungsblatt 1 Aufgabe 2a).

-- Keine List-Comprehension
e :: Integer -> Integer
e x = x + x + x

-- Richtige Antwort
e' :: Integer -> Integer
e' x = sum[x | _ <- [1..3]]

-- f) Definieren Sie ein Funktion nurGrossBuchstaben :: [Char] -> [Char],
--    die nur die Groß- buchstaben eines Strings ausgibt.
--    
--    Definieren Sie eine zweite Funktion, putStrLnNurGrossBuchstaben :: [Char] -> IO (), 
--    die die Funktion nurGrossBuchstaben und deren Ergebnis auf die Konsole ausgibt.
--    Benutzen Sie hierfür den “.” Operator.

nurGrossBuchstaben :: [Char] -> [Char]
nurGrossBuchstaben xs = [x | x <- xs, x `elem` ['A'..'Z']]

putStrLnNurGrossBuchstaben :: [Char] -> IO ()
putStrLnNurGrossBuchstaben = putStrLn  . nurGrossBuchstaben
-- oder
-- putStrLnNurGrossBuchstaben xs = (putStrLn  . nurGrossBuchstaben) xs

-- g) Definieren Sie eine Funktion, welche die Faktorzerlegung einer natürlichen Zahl als Liste zurückgibt.
--    
--    Beispiel: faktoren 20 liefert die Liste [2,4,5,10] .

g :: Integral  a => a -> [a]
g n = [x | x <- [2..n-1], n `mod` x == 0]

-- h) Definieren Sie eine Funktion, welche den größten gemeinsamen Teiler zweier natürlicher Zahlen
--    als Liste zurückgibt. Benutzen Sie die Funktion faktoren aus der vorherigen Aufgabe.
-- "faktoren" :: g

ggT :: Integral a => a -> a -> a
ggT a b = maximum[x | x <- 1:a:g a, y <- 1:b:g b, x == y]

-- i) Pythagoreische Tripel:
--    Definieren Sie ein Funktion, welche einen Integer Wert n als Eingabe erhält
--    und eine Liste mit allen Trippeln (a, b, c) mit a, b, c ≤ n zurück gibt,
--    die den Satz des Pythagoras erfüllen: a2 + b2 = c2
--
--    Beispiel: pytri 10 liefert eine Liste mit den Elementen (3,4,5) und (6,8,10) zurück.

i :: (Num c, Enum c, Eq c) => c -> [(c, c, c)]
i n = [(a, b, c) | c <- [1..n], b <- [1..c], a <- [1..b], a * a + b * b == c * c]
