-- 1-5

-- Gegeben sind die zwei untenstehenden Listen ’substantive’ und ’adjektive’.
-- Berechnen Sie mit Hilfe einer list-comprehensions alle grammatikalisch sinnvollen
-- Tupel-Kombinationen der Elemente der Listen.
-- 
-- let substantive = ["Student","Professor","Tutor"]
-- let adjektive = ["fauler","fleissiger","hilfreicher"]

substantive :: [[Char]]
substantive = ["Student","Professor","Tutor"]
adjektive :: [[Char]]
adjektive = ["fauler","fleissiger","hilfreicher"]

moeglichkeiten :: [[Char]]
moeglichkeiten = [x ++ " " ++ y | x <- adjektive, y <- substantive]
-- moeglichkeiten:
-- "fauler Student", "fauler Professor", "fauler Tutor",
-- "fleissiger Sudent", "fleissiger Professor", "fleissiger Tutor",
-- "hilfreicher Student", "hilfreicher Professor", "hilfreicher Tutor"


-- Antwort zur Frage:
laengeMoeglichkeiten :: Int
laengeMoeglichkeiten = length moeglichkeiten -- 9
