-- ausnahme1.hs
import Control.Monad ( unless )
import Control.Exception ( SomeException, try )

dialog :: IO [Char]
dialog = do
  putStrLn "Was lernst du?"
  a1 <- getLine
  unless (a1 == "Haskell") $ fail "Ausnahme 1"
  putStrLn "Gefällt dir Haskell?"
  a2 <- getLine
  unless (a2 == "Sehr") $ fail "Ausnahme 2"
  putStrLn "Gut geantwortet!"
  return "42: the answer to life, the universe, and everything."

main :: IO ()
main = do
  ergebnis <- try (dialog) :: IO (Either SomeException [Char])
  case ergebnis of
    Left ausnahme -> putStrLn $ "Eingefangene Ausnahme: " ++ show ausnahme
    Right wert -> putStrLn $ "Wert: " ++ wert
