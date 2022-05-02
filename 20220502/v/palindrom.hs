-- palindrom.hs
main :: IO ()
main = do
    z <- getLine
    if null z -- beendet die Schleife
        then return () -- wandelt den leeren Tuple in die tue-nichts-Aktion um
        else do
            if istPalindrom z
                then putStrLn "ist ein Palindrom"
                else putStrLn "ist kein Palindrom"
            main  -- rekursive Aufruf, um eine Schleife zu bilden

istPalindrom w = w == reverse w
