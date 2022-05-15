-- 2-3b
-- Loesung von einem Kommilitonen

-- von vorheriger Aufgabe:
--   ungerade :: Integral a => a -> Bool
--   ungerade x = mod x 2 == 1

-- geradeZahlen2 :: [Integer] -> [Integer]
-- geradeZahlen2 xs = [if ungerade x == True then x*2 else x | x <- a]

ungerade :: Integral a => a -> Bool
ungerade x = mod x 2 == 1

geradeZahlen2 :: [Integer] -> [Integer]
geradeZahlen2 xs = [if ungerade x then x*2 else x | x <- xs] -- 'a' durch 'xs' ersetzt


-- Von mir geschriebene Antwort auf die Abgabe
{-

Servus,
wenn ich Deine Abgabe laufen lassen will, kommt bei mir folgender Fehler in Zeile 6:
    "Variable not in scope: a :: [Integer]".

Das liegt daran, dass Du die Variable 'a' nie definiert hast - glaub ich ;).
Wenn du das 'a' durch den Parameter der Funktion ersetzt - also 'xs' - wird dies das Problem lösen. Zumindest bei mir...

Also die letzte Zeile nochmal richtig aufgeschrieben lautet:
geradeZahlen2 xs = [if ungerade x == True then x*2 else x | x <- xs] -- 'a' durch 'xs' ersetzt


Achja, das '== True' kann man auch weglassen - ist dasselbe nur kürzer :P:
geradeZahlen2 xs = [if ungerade x then x*2 else x | x <- xs]


MfG

-}