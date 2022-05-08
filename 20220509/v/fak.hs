-- fak.hs
import Debug.Trace

main :: IO()
main = do
    putStrLn "Natuerliche Zahl?" -- <= 20
    string <- getLine
    let natZahl = read string :: Integer -- Int statt Integer für kleine Zahlen möglich
    putStrLn ("Die Fakultaet von " ++ string ++ " ist " ++ show (fak natZahl))


fak :: Integer -> Integer
fak x | trace ("call: fak " ++ show x) False = x
fak 0 = 1
fak n = n * fak (n-1)
