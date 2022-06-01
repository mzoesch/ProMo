-- ausnahme3.hs
import Control.Monad
import Control.Exception
import System.IO.Error

main :: IO ()
main = do
  ergebnis <- try (evaluate (1 `div` 0)) :: IO (Either SomeException Int)
  case ergebnis of
    Left ausnahme -> putStrLn $ "Eingefangene Ausnahme: " ++ show ausnahme
    Right wert -> putStrLn $ "Wert: " ++ show wert

{--
whenever catching exceptions thrown by pure code, use evaluate instead of return in  the exception-catching function.
--}
