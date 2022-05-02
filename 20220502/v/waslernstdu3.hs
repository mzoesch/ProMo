-- waslernstdu3.hs
main :: IO ()
main = do
    putStrLn "Was lernst du?"
    sprache <- getLine
    if sprache == "Haskell"
        then putStrLn "Lern lieber BWL"
        else putStrLn "Haskell ist whack"
    putStrLn ("Viel Erfolg beim " ++ sprache ++ " lernen!")
