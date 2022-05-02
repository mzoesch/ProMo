-- 1-5
-- Loesung von einem Kommilitonen

-- let substantive = ["Student","Professor","Tutor"]
-- let adjektive = ["fauler","fleissiger","hilfreicher"]
-- let sinnvolleKombinationen = [ (x,y) | x <- adjektive, y <- substantive ]
-- length sinnvolleKombinationen

substantive = ["Student","Professor","Tutor"]
adjektive = ["fauler","fleissiger","hilfreicher"]
sinnvolleKombinationen = [ (x,y) | x <- adjektive, y <- substantive ]
ergebnis = length sinnvolleKombinationen