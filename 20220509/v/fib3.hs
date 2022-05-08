import Debug.Trace

{-
main :: IO()
main = do
    putStrLn "Natuerliche Zahl?" -- <= 20
    string <- getLine
    let natZahl = read string :: Integer -- Int statt Integer für kleine Zahlen möglich
    putStrLn ("Die Fibonacci-Zahl von " ++ string ++ " ist " ++ show (fib 0 natZahl))
-}

fib  :: Integer -> Integer -> Integer
fib d n | trace (shift d ++ "Call: fib " ++ show n)  False = 0
fib _ 0 = 0
fib _ 1 = 1
fib d n = fib (d+1) (n-1) + fib (d+1) (n-2)

shift :: Integer -> String
shift 0 = ""
shift n =  "   " ++ shift (n-1)
