-- 1-5
-- Loesung von einem Kommilitonen

--length([( a, b )| a <-substantive, b <- adjektive])

substantive = ["Student","Professor","Tutor"]
adjektive = ["fauler","fleissiger","hilfreicher"]

ergebnis = length([( a, b )| a <-substantive, b <- adjektive])