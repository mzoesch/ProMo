-- 1-4

a :: [Integer]
a = [1, 2, 3, 4] ++ [9, 10, 11, 12]

b :: Bool
b = [3, 4, 2] > [2, 4]


-- c) auf AB aber: c = [1, 2, 3, 4, 5, 6, 7, 8] !! 5 == 5
c :: Integer
c = [1, 2, 3, 4, 5, 6, 7, 8] !! 5

d :: Bool
d = null [5, 4, 3, 2, 1]

e :: Int
e = length [5, 4, 3, 2, 1]

f :: a
f = head []

g :: [Integer]
g = tail [2, 3, 4]

h :: [Char]
h = 'H' : "-Milch"

i :: Char
i = "Haskell" !! 2

-- j) Definieren Sie eine Funktion 'kopf', die das erste Element eines Strings ausgibt.
kopf :: [Char] -> Char
kopf = head

-- k) Definieren Sie eine Funktion 'ende', die das letzte Element eines Strings ausgibt.
ende :: [Char] -> Char
ende [x] = x
ende (_:xs) = ende xs
ende [] = error "Liste leer"

-- l) Definieren Sie eine Funktion 'rest', die bis auf das erste Element alle Elemente eines String ausgibt.
rest :: [Char] -> [Char]
rest = tail
