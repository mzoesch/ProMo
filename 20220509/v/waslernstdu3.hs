-- waslernstdu3.hs
main :: IO ()
main = do
    putStrLn "Was lernst du?"
    sprache <- getLine
    if sprache == "Haskell"
        then putStrLn "Gute Wahl!"
        else putStrLn "Denk daran, auch Haskell zu lernen!"
    putStrLn ("Viel Erfolg beim " ++ sprache ++ " lernen!")
