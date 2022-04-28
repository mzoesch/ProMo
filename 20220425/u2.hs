-- 1-2

a :: Int
a = 50 * 100 -4900

b :: Int
b = 50 * (100 -499)


c :: Double
c = 1 - 200 / 0

-- d) let fuenf = 5;
fuenf :: Integer
fuenf = 5;

-- e) let acht = 008;
acht :: Integer
acht = 008;

-- f) let x10 = 0x10;
x10 :: Integer
x10 = 0x10;

-- g) let fuenf' = -(-5) Wie finde ich heraus, wie eine Funkton definiert ist (und auf welchen Datentypen)?
fuenf' :: Integer
fuenf' = -(-5)

-- h) let fuenftel = 1.0 / fromIntegral (fuenf)
fuenftel :: Double
fuenftel = 1.0 / fromIntegral (fuenf)

i :: Bool
i = (fuenf == acht) == (fuenf > acht)

-- j) fuenf /= 5 ==> False
-- k) let a = 'a'
a2 :: Char
a2 = 'a'

-- l) let bc = "c"
bc :: [Char]
bc = "c"

-- m) let abc = a:bc
abc = a2:bc

-- n) let begruessung = "hallo " ++ "welt!"
begruessung :: [Char]
begruessung = "hallo " ++ "welt!"

-- o) let begruessung' = begruessung ++ " gut gem" ++ show (acht)
begruessung' :: [Char]
begruessung' = begruessung ++ " gut gem" ++ show (acht)

-- p) read(show(fuenftel)) + fuenftel

