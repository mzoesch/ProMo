-- ausnahme4.hs
import Control.Monad.Except ( unless )
import qualified Control.Exception as E ( Exception, throw, try)
import Data.Typeable

data MyException = LerntHaskellNicht
                 | MagHaskellNicht
                 | WeitereAusnahme String
                 deriving Typeable

instance E.Exception MyException

instance Show MyException where
  show LerntHaskellNicht = "Unfassbar: Lernt Haskell nicht!"
  show MagHaskellNicht = "Schwer zu glauben: Mag Haskell nicht!"
  show (WeitereAusnahme str) = "Weitere Ausnahme: " ++ str

dialog = do
  putStrLn "Was lernst du?"
  a1 <- getLine
  unless (a1 == "Haskell") $ E.throw LerntHaskellNicht
  putStrLn "Gefällt dir Haskell?"
  a2 <- getLine
  unless (a2 == "Sehr") $ E.throw MagHaskellNicht
  putStrLn "Gut geantwortet!"
  return "42: the answer to life, the universe, and everything."

main :: IO ()
main = do
  ergebnis <- E.try (dialog) :: IO (Either MyException [Char])
  case ergebnis of
    Left ausnahme -> putStrLn $ "Eingefangene Ausnahme: " ++ show ausnahme
    Right wert -> putStrLn $ "Wert: " ++ wert
