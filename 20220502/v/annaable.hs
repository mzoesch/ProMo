main = do
    vorname <- return "Anna"
    nachname <- return "Abel"
    putStrLn (vorname ++ " " ++ nachname)
