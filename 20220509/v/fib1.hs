-- fib1.hs
import Debug.Trace

main :: IO()
main = do
    putStrLn "Natuerliche Zahl?" -- <= 20
    string <- getLine
    let natZahl = read string :: Integer -- Int statt Integer für kleine Zahlen möglich
    putStrLn ("Die Fibonacci-Zahl von " ++ string ++ " ist " ++ show (fib natZahl))

fib :: Integer -> Integer
fib 0 = 0
fib 1 = 1
fib n = fib (n-1) + fib (n-2)
