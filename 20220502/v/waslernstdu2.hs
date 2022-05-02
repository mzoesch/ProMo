-- waslernstdu2.hs
import Control.Monad (when)

main :: IO ()
main = do
    putStrLn "Was lernst du?"
    sprache <- getLine
    when (sprache == "Haskell") $ do {putStrLn "Gute Wahl!"}
    putStrLn ("Viel Erfolg beim " ++ sprache ++ " lernen!")
