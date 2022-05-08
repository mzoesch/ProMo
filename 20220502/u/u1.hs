-- 2-1

a :: Ordering
a = compare 2 3

b :: Integer
b = 13 `mod` 4

c :: Integer
c = (-) 7 4

d :: Bool
d = odd 3

e :: Bool
e = even 3

f :: [Integer]
f = drop 3 [1, 2, 3, 4, 5]

g :: Bool
g = elem 3 [1, 2, 3, 4, 5] -- g = 3 `elem` [1, 2, 3, 4, 5]

h :: Integer
h = sum [1, 2, 3, 4, 5]

i :: [Char]
i = reverse "Lag er im Kajak, mir egal"

j :: [String]
j = words "Lag er im Kajak, mir egal"

k :: String
k = unlines ["Lag", "er", "im", "Kajak,", "mir", "egal"]

















