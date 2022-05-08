-- palyndrom.hs
main :: IO ()
main = do
    z <- getLine
    if null z -- beendet die Schleife
        then return () -- wandelt den leeren Tuple in die tue-nichts-Aktion um
        else do
            if istPalyndrom z
                then putStrLn "ist ein Palyndrom"
                else putStrLn "ist kein Palyndrom"
            main  -- rekursive Aufruf, um eine Schleife zu bilden

istPalyndrom w = w == reverse w
