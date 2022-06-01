-- ausnahme2.hs
import Control.Monad
import Control.Exception
import System.IO.Error

main :: IO ()
main = do
  ergebnis <- try (return (1 `div` 0)) :: IO (Either SomeException Int)
  case ergebnis of
    Left ausnahme -> putStrLn $ "Eingefangene Ausnahme: " ++ show ausnahme
    Right wert -> putStrLn $ "Wert: " ++ show wert
