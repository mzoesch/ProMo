-- waslernstdu1.hs
main :: IO ()
main = do
    putStrLn "Was lernst du?"
    sprache <- getLine
    putStrLn ("Viel Erfolg beim " ++ sprache ++ " lernen!")
