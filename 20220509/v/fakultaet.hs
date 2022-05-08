-- fakultaet.hs
main :: IO()
main = do
    putStrLn "Natuerliche Zahl?" -- <= 20
    string <- getLine
    let natZahl = read string :: Integer -- Int statt Integer für kleine Zahlen möglich
    putStrLn ("Die Fakultaet von " ++ string ++ " ist " ++ show (fakultaet natZahl))

fakultaet :: Integer -> Maybe [Integer]
fakultaet 0 = Just[1]
fakultaet n = if n < 0
                   then Nothing
                   else let Just[m] = fakultaet (n-1) in Just[n*m]
