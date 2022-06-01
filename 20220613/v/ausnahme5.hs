-- ausnahme5.hs
import Control.Monad.Except ( unless )
import qualified Control.Exception as E ( Exception, evaluate, throw, try)
import Data.Typeable

data MyException = LerntHaskellNicht
                 | MagHaskellNicht
                 deriving Typeable

instance E.Exception MyException

instance Show MyException where
  show LerntHaskellNicht = "Unfassbar: Lernt Haskell nicht!"
  show MagHaskellNicht = "Schwer zu glauben: Mag Haskell nicht!"

main :: IO ()
main = do
  ergebnis <- E.try (E.evaluate $ show (2 `div` 0)) :: IO (Either MyException [Char])
  case ergebnis of
    Left ausnahme -> putStrLn $ "Eingefangene Ausnahme: " ++ show ausnahme
    Right wert -> putStrLn $ "Wert: " ++ wert
